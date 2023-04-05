.PHONY: all clean

BIB := thesis.bib
MAIN_TEX := thesis.tex
SUB_TEX := 01-intro.tex 02-background.tex 03-your-paper-1.tex 04-your-paper-2.tex xx-conclusion.tex yy-acknowledgements.tex zz-korean-summary.tex snutocstyle.tex
TARGET := thesis.pdf

all: target $(addprefix target/,$(TARGET))

target/$(TARGET): $(MAIN_TEX) $(SUB_TEX) $(BIB)
	latexmk -pdf -pdflatex="pdflatex -halt-on-error -interaction=nonstopmode" -output-directory='target' $(MAIN_TEX)

target:
	mkdir -p "./target"

clean:
	rm -rf target
