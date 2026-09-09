# Build the thesis PDF. Requires a TeX Live installation with latexmk.
.PHONY: all clean

all:
	cd Thesis && latexmk -pdf -interaction=nonstopmode main.tex

clean:
	cd Thesis && latexmk -C
