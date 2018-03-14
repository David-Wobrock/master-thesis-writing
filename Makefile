DIRS=master_thesis specification_schedule literature_survey reports presentation

all: master_thesis synthesis_report presentation specification_schedule_kth literature_survey_kth reports


master_thesis: master_thesis/master_thesis.pdf
	cp master_thesis/master_thesis.pdf .

master_thesis/master_thesis.pdf: recursive
	$(MAKE) -C master_thesis/ master_thesis.pdf

synthesis_report: master_thesis/synthesis_report.pdf
	cp master_thesis/synthesis_report.pdf .

master_thesis/synthesis_report.pdf: recursive
	$(MAKE) -C master_thesis/ synthesis_report.pdf


presentation: presentation/presentation.pdf
	cp presentation/presentation.pdf .

presentation/presentation.pdf: recursive
	$(MAKE) -C presentation/ presentation.pdf


specification_schedule_kth: specification_schedule/specification_schedule.pdf
	mv specification_schedule/specification_schedule.pdf specification_schedule_kth.pdf

specification_schedule/specification_schedule.pdf: recursive
	$(MAKE) -C specification_schedule/


literature_survey_kth: literature_survey/literature_survey.pdf
	mv literature_survey/literature_survey.pdf literature_survey_kth.pdf

literature_survey/literature_survey.pdf: recursive
	$(MAKE) -C literature_survey/


reports: recursive
	$(MAKE) -C reports/

# Other targets
clean:
	for d in $(DIRS); do (cd $$d; $(MAKE) clean ); done

mrproper: clean
	rm -f *.pdf

recursive:
	true
