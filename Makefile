DIRS=report specification-schedule-kth

all: report.pdf specification-schedule-kth.pdf

report.pdf: recursive
	$(MAKE) -C report/

specification-schedule-kth.pdf: recursive
	$(MAKE) -C specification-schedule-kth/

clean:
	for d in $(DIRS); do (cd $$d; $(MAKE) clean ); done

mrproper: clean
	rm -f *.pdf

recursive:
	true
