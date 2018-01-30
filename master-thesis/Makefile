THESIS_FILES = tex/1_introduction.tex tex/2_image_processing.tex tex/conclusion.tex

all: master_thesis.pdf

master_thesis.pdf: master_thesis.tex bib.bib $(THESIS_FILES)
	pdflatex master_thesis.tex
	bibtex master_thesis
	pdflatex master_thesis.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc
