all: report.pdf

report.pdf: report.tex
	pdflatex report.tex

clean:
	rm -f *.log *.aux *.pdf
