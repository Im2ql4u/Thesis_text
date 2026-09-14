# Physics-Informed Neural Quantum States for Quantum Dots

Aleksander Sekkelsten

LaTeX sources for the thesis text. This repository holds the manuscript and the
figures it includes — nothing else. The research code, experiment drivers, and
raw results live in the main project repository.

## Building

Requires a TeX Live installation providing `latexmk`, `pdflatex`, and `bibtex`.

```sh
make          # builds Thesis/main.pdf
make clean    # removes build artifacts
```

Or directly:

```sh
cd Thesis && latexmk -pdf main.tex
```

The current build is 128 pages.

## Layout

```
Thesis/
  main.tex              preamble, document structure, bibliography style
  abstract.tex          front matter
  preface.tex
  introduction.tex      Part I
  theory.tex            Part II
  method.tex            Part III
  results_intro.tex     Part IV
  results.tex
  results_kernel.tex
  discussion.tex        Part V
  conclusion.tex
  appendix.tex          Part VI
  ai_declaration.tex
  references.bib
  uiomasterfp.sty       UiO's official front page (Dept. of Informatics, v1.10)
  uio-fp-*.pdf          logo and seal used by the front page
  main.pdf              committed build of the above

results/figures/        figures referenced by \includegraphics
  results/              (incl. results/kernel/)
  theory/
```

The `results/figures/` path is kept at this level because the chapter files set
`\graphicspath` to `../results/figures/...`. Mirroring the layout of the main
project repository means the sources here are byte-identical to their originals
and can be diffed or synced without rewriting any paths.
