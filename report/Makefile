REPORT_FILES = tex/1_introduction.tex tex/1_3_related_work.tex tex/2_image_processing.tex tex/3_ddm.tex tex/3_1_eigenvalue_theory.tex tex/conclusion.tex
EIGENVALUE_FILES = tex/3_1_eigenvalue_theory.tex

all: report.pdf eigenvalue_theory.pdf

report.pdf: report.tex bib.bib $(REPORT_FILES)
	pdflatex report.tex
	bibtex report
	pdflatex report.tex

eigenvalue_theory.pdf: eigenvalue_theory.tex bib.bib $(EIGENVALUE_FILES)
	pdflatex eigenvalue_theory.tex
	bibtex eigenvalue_theory
	pdflatex eigenvalue_theory.tex

nystroem.pdf: nystroem.tex bib.bib
	pdflatex nystroem.tex
	bibtex nystroem
	pdflatex nystroem.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc
