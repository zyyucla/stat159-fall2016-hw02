.PHONY:all data clean

all: report.pdf eda-output.txt regression.RData

data: Advertising.csv
	curl -o data/Advertising.csv  http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean:
	rm -f report/report.rmd report/report.pdf

report.pdf: regression.RData:report.Rmd regression.RData scatterplot-tv-sales.png

regression.RData:regression-script.R Advertising.csv

eda-output.txt: eda-script.R Advertising.csv
