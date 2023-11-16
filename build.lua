#!/usr/bin/env texlua

-- Build script for "tex-ini-files" bundle

-- Identify the bundle and module
bundle  = ""
module  = "tex-ini-files"

-- Non-standard file set up
sourcefiles  = {"*.dat", "*.ini", "*.tex", "lualatexquotejobname.lua"}
unpackfiles  = { }
tagfiles = sourcefiles
installfiles = sourcefiles

tdsroot = "generic"
tdslocations =
  {
    "tex/latex/tex-ini-files/*latex.ini",
    "tex/latex/tex-ini-files/lualatex*.*",
  }
packtdszip = true

function update_tag(file,content,tagname)
  return string.gsub(content,"tex%-ini%-files %d%d%d%d%-%d%d%-%d%d:",
    "tex-ini-files " .. tagname .. ":")
end
