#!/usr/bin/env texlua

-- Build script for "tex-ini-files" bundle

-- Identify the bundle and module
bundle  = ""
module  = "tex-ini-files"

-- Non-standard file set up
sourcefiles  = {"*.dat", "*.ini", "*.tex"}
unpackfiles  = { }
versionfiles = sourcefiles
installfiles = sourcefiles

function setversion_update_line (line, date, version)
  if string.match(line, "^%% tex%-ini%-files %d%d%d%d%-%d%d%-%d%d: ") then
    line = string.gsub(line, "%d%d%d%d%-%d%d%-%d%d", date)
  end
  if string.match(line, "^%-%- tex%-ini%-files %d%d%d%d%-%d%d%-%d%d: ") then
    line = string.gsub(line, "%d%d%d%d%-%d%d%-%d%d", date)
  end
  return line
end
