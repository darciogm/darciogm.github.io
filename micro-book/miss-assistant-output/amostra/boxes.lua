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

-- Escape & in Str elements inside boxes
local function escape_ampersand(el)
  if el.t == "Str" then
    el.text = el.text:gsub("&", "\\&")
  end
  return el
end

function Div(el)
  for cls, env in pairs(env_map) do
    if el.classes:includes(cls) then
      local title = (el.attributes.title or ""):gsub("&", "\\&")
      local open = pandoc.RawBlock("latex",
        "\\begin{" .. env .. "}{" .. title .. "}")
      local close = pandoc.RawBlock("latex",
        "\\end{" .. env .. "}")

      -- Escape & in text content inside box
      local content = pandoc.walk_block(pandoc.Div(el.content), {Str = escape_ampersand})

      local blocks = pandoc.List({open})
      blocks:extend(content.content)
      blocks:insert(close)
      return blocks
    end
  end
  return el
end
