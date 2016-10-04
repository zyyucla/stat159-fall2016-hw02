.PHONY:all data clean

all: report.pdf eda-output.txt regression.RData

data: Advertising.csv
	curl -o data/Advertising.csv  http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean:
	rm -f report/report.rmd report/report.pdf

eda-script.txt: code/eda-script.R
	Rscript code/eda-script.R
