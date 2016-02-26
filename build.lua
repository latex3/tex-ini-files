#!/usr/bin/env texlua

-- Build script for "tex-ini-files" bundle

-- Identify the bundle and module
bundle  = ""
module  = "tex-ini-files"

-- Non-standard file set up
sourcefiles = {"*.dat", "*.ini", "*.tex"}
unpackfiles = { }

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))