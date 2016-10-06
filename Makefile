.PHONY:all data clean

all: report.pdf eda-output.txt regression.RData

data: 
	curl -o data/Advertising.csv  http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean:
	rm -f report/report.rmd report/report.pdf

regression.RData:code/regression-script.R  data/Advertising.csv
	Rscript code/regression-script.R

eda-output.txt: code/eda-script.R  data/Advertising.csv
	Rscript code/eda-script.R

report.pdf: report/report.Rmd regression.RData images/scatterplot-tv-sales.png
	pandoc report/report.Rmd --latex-engine=xelatex -s -o report/report.pdf

report.html: report.rmd
	pandoc report.rmd -s -o report.html
