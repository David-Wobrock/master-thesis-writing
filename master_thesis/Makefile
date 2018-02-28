PLOT_DIR = tex/plots
PLOT_FILES = $(PLOT_DIR)/entire_runtime.tex $(PLOT_DIR)/entire_proportion.tex $(PLOT_DIR)/500_eigenvalues.tex $(PLOT_DIR)/inv_it_runtime.tex $(PLOT_DIR)/inv_it_proportion.tex $(PLOT_DIR)/inv_it_internal_proportion.tex

ABSTRACT_FILES = tex/abstracts/english.tex tex/abstracts/svenska.tex tex/abstracts/francais.tex

THESIS_FILES = tex/1_introduction.tex tex/2_image_processing.tex tex/3_implementation.tex tex/conclusion.tex tex/appendix_eigenvalue_proof.tex $(PLOT_FILES) $(ABSTRACT_FILES)

all: master_thesis.pdf synthesis_report.pdf

master_thesis.pdf: master_thesis.tex references.bib $(THESIS_FILES) kththesis.cls
	pdflatex master_thesis.tex
	bibtex master_thesis
	pdflatex master_thesis.tex

synthesis_report.pdf: synthesis_report.tex references.bib $(THESIS_FILES)
	pdflatex synthesis_report.tex
	bibtex synthesis_report
	pdflatex synthesis_report.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc
	rm -f tex/*.aux
	rm -f master_thesis.pdf synthesis_report.pdf
