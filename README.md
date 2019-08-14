This repository is a companion to a 2019 Master's Thesis entitled "Financial Savings Behavior: Examining the Role of Culture and Policy Implications" for the Willy Brandt School of Public Policy at the University of Erfurt. The thesis replicates and extends an econometric study of the cultural determinants of household saving behavior, using the epidemiological approach linking second-generation immigrants to their countries of ancestry.

Data Sources: German Socio-Economic Panel (SOEP), World Values Survey (WVS), Schwartz Values Survey (SVS), Hofstede cultural dimensions. 

Order of Analysis: 

Step 1: Data from SOEP on household characteristics
Files: SOEP_variables.R, SOEP_editing.R

Step 2: Country of ancestry for second-generation immigrants and their parents
Files: SOEP_nationalities.R, Nationalities_individuals.R, Nationalities_parents.R

Step 3: Final sample
Files: Sampling.R

Step 4: Descriptive statistics and countries of ancestry
Files: Summary_statistics.R, Countries.R

Step 5: Data from WVS and thrift calculations
Files: WVS_EVS.R, Thrift.R

Step 6: Data from SVS
Files: Schartz_Values_Survey.R

Step 7: Data from Hofstede
Files: Hofstede.R

Step 8: Scatterplots and linear fit
Files: Visualizations.R

Step 9: Dummy coding and composite countries
Files: Model_preparation.R, Yugoslavia_Benelux.R

Step 10: Tobit model
Files: Tobit_Model.R

Step 11: Robustness check: sample adjustments
Files: Robustness.R, Sample_Adjustments.R

Step 12: Robustness check: Ordinary Least Squares
Files: OLS_model.R

Step 13: Extension: prosociality variables
Files: Trust.R, Prosociality.R

Step 14: Extension: including recent years (2015-17)
Files: Recent_years.R, Model_preparation_recent.R, Recent_years_Tobit.R

