#!/usr/bin/env node
// Inliner para produzir o standalone single-file dos slides reveal.js (Quarto).
// Inlina <link rel=stylesheet>, <script src>, <img src> e, dentro do CSS,
// @import (recursivo) e url() (fontes/imagens -> data URI). MathJax via CDN é
// injetado em runtime pelo plugin math, então não é tocado (paridade c/ Aula 8).
// Uso: node inline-standalone.js aula-09.html aula-09-standalone.html
const fs = require('fs');
const path = require('path');

const [, , inFile, outFile] = process.argv;
if (!inFile || !outFile) { console.error('uso: node inline-standalone.js <in.html> <out.html>'); process.exit(1); }

const baseDir = path.dirname(path.resolve(inFile));
const MIME = {
  '.woff2': 'font/woff2', '.woff': 'font/woff', '.ttf': 'font/ttf', '.otf': 'font/otf',
  '.eot': 'application/vnd.ms-fontobject', '.svg': 'image/svg+xml', '.png': 'image/png',
  '.gif': 'image/gif', '.jpg': 'image/jpeg', '.jpeg': 'image/jpeg', '.webp': 'image/webp',
};
const isLocal = (u) => u && !/^(https?:|data:|#|\/\/|mailto:)/i.test(u.trim());

let inlinedAssets = 0, missing = [];

function dataURI(file) {
  const ext = path.extname(file).toLowerCase();
  const mime = MIME[ext] || 'application/octet-stream';
  const buf = fs.readFileSync(file);
  inlinedAssets++;
  return `data:${mime};base64,${buf.toString('base64')}`;
}

// Processa CSS: resolve @import recursivo e converte url() -> data URI.
function processCss(css, cssDir) {
  // 1) @import url("x") | @import url(x) | @import "x"  (com media opcional)
  css = css.replace(/@import\s+(?:url\(\s*)?(['"]?)([^'")]+)\1\s*\)?\s*([^;]*);/g, (m, q, ref, media) => {
    if (!isLocal(ref)) return m;
    const fp = path.resolve(cssDir, ref.replace(/[?#].*$/, ''));
    if (!fs.existsSync(fp)) { missing.push(fp); return m; }
    const sub = processCss(fs.readFileSync(fp, 'utf8'), path.dirname(fp));
    return media.trim() ? `@media ${media.trim()}{${sub}}` : sub;
  });
  // 2) url(...) -> data URI
  css = css.replace(/url\(\s*(['"]?)([^'")]+)\1\s*\)/g, (m, q, ref) => {
    if (!isLocal(ref)) return m;
    const fp = path.resolve(cssDir, ref.replace(/[?#].*$/, ''));
    if (!fs.existsSync(fp)) { missing.push(fp); return m; }
    try { return `url(${dataURI(fp)})`; } catch (e) { missing.push(fp); return m; }
  });
  return css;
}

let html = fs.readFileSync(inFile, 'utf8');

// <link rel="stylesheet" href="local"> -> <style>
html = html.replace(/<link\b[^>]*>/gi, (tag) => {
  if (!/rel\s*=\s*["']?stylesheet/i.test(tag)) return tag;
  const hm = tag.match(/href\s*=\s*"([^"]+)"/i);
  if (!hm || !isLocal(hm[1])) return tag;
  const fp = path.resolve(baseDir, hm[1].replace(/[?#].*$/, ''));
  if (!fs.existsSync(fp)) { missing.push(fp); return tag; }
  const css = processCss(fs.readFileSync(fp, 'utf8'), path.dirname(fp));
  return `<style>\n${css}\n</style>`;
});

// <script src="local"></script> -> <script>...</script>
html = html.replace(/<script\b([^>]*)>\s*<\/script>/gi, (m, attrs) => {
  const sm = attrs.match(/src\s*=\s*"([^"]+)"/i);
  if (!sm || !isLocal(sm[1])) return m;
  const fp = path.resolve(baseDir, sm[1].replace(/[?#].*$/, ''));
  if (!fs.existsSync(fp)) { missing.push(fp); return m; }
  let js = fs.readFileSync(fp, 'utf8').replace(/<\/script>/gi, '<\\/script>');
  const tm = attrs.match(/type\s*=\s*"([^"]+)"/i);
  inlinedAssets++;
  return `<script${tm ? ` type="${tm[1]}"` : ''}>\n${js}\n</script>`;
});

// <img ... src="local"> -> data URI
html = html.replace(/<img\b[^>]*>/gi, (tag) => {
  const sm = tag.match(/src\s*=\s*"([^"]+)"/i);
  if (!sm || !isLocal(sm[1])) return tag;
  const fp = path.resolve(baseDir, sm[1].replace(/[?#].*$/, ''));
  if (!fs.existsSync(fp)) { missing.push(fp); return tag; }
  return tag.replace(sm[1], dataURI(fp));
});

fs.writeFileSync(outFile, html);
const stillLocal = (html.match(/(?:href|src)="(?!https?:|data:|#)[^"]*aula-09_files[^"]*"/gi) || []);
console.log(`OK -> ${outFile}`);
console.log(`assets inlinados: ${inlinedAssets}`);
console.log(`refs locais _files restantes: ${stillLocal.length}`);
if (stillLocal.length) console.log(stillLocal.slice(0, 10).join('\n'));
if (missing.length) { console.log(`AVISO: ${missing.length} arquivos referenciados nao encontrados:`); console.log([...new Set(missing)].slice(0, 15).join('\n')); }
