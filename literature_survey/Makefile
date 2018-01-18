literature_survey.pdf: literature_survey.tex bib.bib
	pdflatex literature_survey.tex
	bibtex literature_survey
	pdflatex literature_survey.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc
