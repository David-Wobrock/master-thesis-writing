DIRS=report specification-schedule-kth

all: report specification-schedule-kth

report: recursive
	$(MAKE) -C report/

specification-schedule-kth: recursive
	$(MAKE) -C specification-schedule-kth/

clean:
	for d in $(DIRS); do (cd $$d; $(MAKE) clean ); done

mrproper:
	for d in $(DIRS); do (cd $$d; $(MAKE) mrproper ); done

recursive:
	true
