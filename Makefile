report.html: report.Rmd codes/code3_render.R 
	Rscript codes/code3_render.R

# clean dataset
derived_mri_long.csv: codes/code1_clean.R
	Rscript codes/code1_clean.R

# exploratory analysis
explore_plot.png: codes/code2_explore.R
	Rscript codes/code2_explore.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html && rm -f data/derived_mri_long.csv