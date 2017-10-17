REPORT_FILES = tex/1_introduction.tex tex/related_work.tex tex/2_2dimage_prcessing.tex
LITERATURE_FILES = tex/related_work.tex

all: report.pdf literature_survey.pdf

report.pdf: report.tex bib.bib $(REPORT_FILES)
	pdflatex report.tex
	bibtex report
	pdflatex report.tex

literature_survey.pdf: literature_survey.tex bib.bib $(LITERATURE_FILES)
	pdflatex literature_survey.tex
	bibtex literature_survey
	pdflatex literature_survey.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc

mrproper: clean
	rm -f *.pdf
