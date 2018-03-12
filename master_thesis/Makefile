INTRO_DIR = tex/1_introduction/
INTRO_FILE_NAMES = background.tex objective.tex spectral_graph_theory.tex image_processing_denoising.tex linear_solvers_ddm.tex delimitations.tex
INTRO_FILES = $(addprefix $(INTRO_DIR),$(INTRO_FILE_NAMES))

IMG_PROC_DIR = tex/2_image_processing/
IMG_PROC_FILE_NAMES = introduction.tex image_as_graph.tex filter.tex nystrom.tex eigendecomposition.tex output.tex variations.tex
IMG_PROC_FILES = $(addprefix $(IMG_PROC_DIR),$(IMG_PROC_FILE_NAMES))

IMPLEMENTATION_DIR = tex/3_implementation/
IMPLEMENTATION_FILE_NAMES = algorithm_details.tex parallel_implementation.tex init_and_sampling.tex submatrices_computations.tex inverse_subspace_iteration.tex nystrom.tex experimental_setup.tex entire_matrix_results.tex entire_matrix_performances.tex eigenvalues.tex approx_matrix_performances.tex slepc_performances.tex linear_solver_performances.tex
IMPLEMENTATION_FILES = $(addprefix $(IMPLEMENTATION_DIR),$(IMPLEMENTATION_FILE_NAMES))

CONCLUSION_DIR = tex/4_conclusion/
CONCLUSION_FILE_NAMES = discussions.tex perspectives.tex
CONCLUSION_FILES = $(addprefix $(CONCLUSION_DIR), $(CONCLUSION_FILE_NAMES))

PLOT_DIR = tex/plots/
PLOT_FILE_NAMES = entire_runtime.tex entire_proportion.tex 500_eigenvalues.tex inv_it_runtime_50_and_500.tex inv_it_proportion_50_and_500.tex slepc_runtime.tex inv_it_runtime_50_and_500_gs.tex linear_solvers_runtime.tex
PLOT_FILES = $(addprefix $(PLOT_DIR),$(PLOT_FILE_NAMES))

ABSTRACT_FILES = tex/abstracts/english.tex tex/abstracts/svenska.tex tex/abstracts/francais.tex


THESIS_FILES = tex/1_introduction.tex tex/2_image_processing.tex tex/3_implementation.tex tex/4_conclusion.tex $(PLOT_FILES) $(ABSTRACT_FILES) $(INTRO_FILES) $(IMG_PROC_FILES) $(IMPLEMENTATION_FILES) $(CONCLUSION_FILES)

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
