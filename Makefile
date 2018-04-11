TEXFLAGS = -interaction=batchmode -halt-on-error -file-line-error

all: rmec13-ex.pdf

rmec13-ex.pdf: rmec13-ex.tex
	xelatex $(TEXFLAGS) $<

.PHONY: clean clean-all

clean:
	-rm -f *.log *.aux *.toc

clean-all: clean
	-rm -f *.pdf
