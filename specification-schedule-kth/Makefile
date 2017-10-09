all: specification-schedule-kth.pdf

specification-schedule-kth.pdf: specification-schedule-kth.tex
	pdflatex specification-schedule-kth.tex

clean:
	rm -f *.log *.aux *.out

mrproper: clean
	rm -f *.pdf
