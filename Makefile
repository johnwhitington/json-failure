# Build the cpdf command line tools and top level
MODS = util utf16 llist parserMonad json 

SOURCES = $(foreach x,$(MODS),$(x).ml $(x).mli) main.ml

PACKS = unix

RESULT = main

all : byte-code

-include OCamlMakefile
