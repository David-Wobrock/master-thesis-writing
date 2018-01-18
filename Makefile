DIRS=report specification-schedule-kth literature_survey

all: report specification-schedule-kth literature_survey eigenvalue_theory

report: report/report.pdf
	cp report/report.pdf .

report/report.pdf: recursive
	$(MAKE) -C report/ report.pdf

specification-schedule-kth: specification-schedule-kth/specification-schedule-kth.pdf
	cp specification-schedule-kth/specification-schedule-kth.pdf .

specification-schedule-kth/specification-schedule-kth.pdf: recursive
	$(MAKE) -C specification-schedule-kth/

literature_survey: literature_survey/literature_survey.pdf
	cp literature_survey/literature_survey.pdf .

literature_survey/literature_survey.pdf: recursive
	$(MAKE) -C literature_survey/

eigenvalue_theory: report/eigenvalue_theory.pdf
	cp report/eigenvalue_theory.pdf .

report/eigenvalue_theory.pdf: recursive
	$(MAKE) -C report/ eigenvalue_theory.pdf

# Other targets
clean:
	for d in $(DIRS); do (cd $$d; $(MAKE) clean ); done

mrproper: clean
	rm -f *.pdf

recursive:
	true
