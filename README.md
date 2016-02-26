# Model TeX format creation files

This bundle provides a collection of model `.ini` files for
creating TeX formats. These files are commonly used to introduced
distribution-dependent variations in formats. They are also used
to allow existing format source files to be used with newer
engines, for example to adapt the plain e-TeX source file to
work with XeTeX and LuaTeX.

## Shared configuration

The file `pdftexconfig.dat` contains common settings for pdfTeX
and LuaTeX, most of which are concerned with direct PDF output.
These settings are given in a key-value format and are named
based on the pdfTeX 1.40 primitives. The values for the settings
themselves is taken from the standard values in TeX Live 2010
with the paper size set as A4.

Loading this data in pdfTeX is achieved by `pdftexconfig.tex`,
whereas for LuaTeX the file `luatexconfig.tex` is needed. Both
of these files will load the shared data file and assign the
appropriate primitives.

The loaders recognise the marker control sequence `\dvimode`.
If this is defined, the loaders will set the format to produce
DVI file, and otherwise will select direct PDF output. The loader
will then undefine `\dvimode`.

## Legal

The files provided here were originally written by various
authors and are all marked as public domain.
