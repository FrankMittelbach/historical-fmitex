#!/usr/bin/env texlua

-- Build script for "mfnfss" files

-- Identify the bundle and module
bundle = ""
module = "mfnfss"

-- CTAN's name for this is a bit different from ours
ctanpkg = "latex-mfnfss"

checksuppfiles = 
  {"regression-test.tex"}

checkengines   = {"pdftex"}

-- Location of main directory: use Unix-style path separators
maindir = ".."

-- Documentation is standalone
installfiles = {"*.fd", "*.sty"}
typesetfiles = {"*.dtx"}

-- Release a TDS-style zip
packtdszip  = true

-- tests for this bundle
testfiledir = "testfiles"


-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))

