-- Miss Assistant — Pandoc Lua filter to convert fenced divs to tcolorbox

-- Map div class → tcolorbox environment name
local env_map = {
  definitionbox = "definitionbox",
  theorembox = "theorembox",
  proofbox = "proofbox",
  intuitionbox = "intuitionbox",
  tipbox = "tipbox",
  notebox = "notebox",
  warningbox = "warningbox",
  examplebox = "examplebox",
  successbox = "successbox",
  infobox = "infobox",
  boxbrasilbox = "boxbrasilbox",
  boxmundobox = "boxmundobox",
  exresolvidobox = "exresolvidobox",
  classroombox = "classroombox",
  pesquisabox = "pesquisabox",
}

-- Escape special LaTeX chars in text inside boxes
local function escape_special(el)
  if el.t == "Str" then
    el.text = el.text:gsub("&", "\\&")
  end
  return el
end

-- Sanitize title for safe LaTeX tcolorbox usage
local function sanitize_title(title)
  if not title then return "" end
  -- Remove $...$ math
  title = title:gsub("%$([^%$]*)%$", "%1")
  title = title:gsub("%$", "")
  -- Escape special LaTeX chars
  title = title:gsub("&", " e ")
  title = title:gsub("_", "\\_")
  title = title:gsub("#", "\\#")
  title = title:gsub("%%", "\\%%")
  -- Remove braces and carets (dangerous in tcolorbox titles)
  title = title:gsub("{", "")
  title = title:gsub("}", "")
  title = title:gsub("%^", "")
  -- Fix R$ (Brazilian currency) — R\textdollar or R\ sequences
  title = title:gsub("R\\textdollar", "R\\$")
  title = title:gsub("R\\(%d)", "R$%1")
  -- Remove backslash commands that could break
  title = title:gsub("\\frac[^%s]*", "")
  title = title:gsub("\\delta", "delta")
  title = title:gsub("\\lambda", "lambda")
  title = title:gsub("\\sigma", "sigma")
  title = title:gsub("\\textdollar", "\\$")
  title = title:gsub("\\[a-zA-Z]+", "")
  -- Truncate very long titles
  if #title > 150 then
    title = title:sub(1, 147) .. "..."
  end
  return title
end

function Div(el)
  for cls, env in pairs(env_map) do
    if el.classes:includes(cls) then
      local title = sanitize_title(el.attributes.title or "")
      local open = pandoc.RawBlock("latex",
        "\\begin{" .. env .. "}{" .. title .. "}")
      local close = pandoc.RawBlock("latex",
        "\\end{" .. env .. "}")

      -- Escape & in text content inside box
      local content = pandoc.walk_block(pandoc.Div(el.content), {Str = escape_special})

      local blocks = pandoc.List({open})
      blocks:extend(content.content)
      blocks:insert(close)
      return blocks
    end
  end
  return el
end
