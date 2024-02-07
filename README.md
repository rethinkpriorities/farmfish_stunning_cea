# Prospective cost-effectiveness of farmed fish stunning corporate commitments in Europe

This repository contains data and code used in the publication:  Prospective cost-effectiveness of farmed fish stunning corporate commitments in Europe.

Analysis was conducted in R and code is written in a mixture of R scripts (.R) and Quarto markdown (.qmd).

In order to edit and run the code, I suggest you download the entire repository to your local drive.  Be sure to include the .Rproj file to ensure file references operate correctly.

### View rendered versions of script

For anyone interested in looking at the code and results in more detail, but not necessarily interested in downloading, editting and running the script, the rendered .html files are probably the best starting place.  You can either download these files and open them locally on your machine.  Or you can use the following links:

-   [1 EU farm finfish consumption by country and species](http://htmlpreview.github.io/?https://github.com/rethinkpriorities/farmfish_stunning_cea/blob/main/5_rendered_output/1%20EU%20farm%20finfish%20consumption%20by%20country%20and%20species.html)

-   [2 Introduction section charts](http://htmlpreview.github.io/?https://github.com/rethinkpriorities/farmfish_stunning_cea/blob/main/5_rendered_output/2%20Introduction%20section%20charts.html)

-   [3 Main results - stunning intervention](http://htmlpreview.github.io/?https://github.com/rethinkpriorities/farmfish_stunning_cea/blob/main/5_rendered_output/3%20Main%20results%20-%20stunning%20intervention.html)

-   [4 Annex results - speculative non-stunning intervention](http://htmlpreview.github.io/?https://github.com/rethinkpriorities/farmfish_stunning_cea/blob/main/5_rendered_output/4%20Annex%20results%20-%20speculative%20non-stunning%20intervention.html)

-   [5 Time in pain exploration](http://htmlpreview.github.io/?https://github.com/rethinkpriorities/farmfish_stunning_cea/blob/main/5_rendered_output/5%20Time%20in%20pain%20exploration.html)

### Description of contents each folder in this repository

| Folder name             | Contents                                                                                                |
|---------------------|---------------------------------------------------|
| **1_input_data**        | Data that inputs into the analysis                                                                      |
| **2_code**              | Contains the code for the analysis (written in R, either as base R script or as a Quarto markdown file. |
| **3_intermediate_data** | Contains processed data (in.rds format) that is an output of one script file but an input into another. |
| **4_charts**            | Charts and tables that are used in the final report.                                                    |
| **5_rendered_output**   | Rendered scripts files in .html, .md and .pdf format.                                                   |


### Input_data folder contents

| File | Contents |
| ---- | ---- |
| **EUFOMA_consumption_data.xlsx** | Per country apparent consumption estimates for various farmed fish species, mostly from European Market Observatory for fisheries and aquaculture (**EUMOFA**) market study reports:   <br>    - [Seabass (2016)](https://perma.cc/9AT9-2W26)<br>    - [Seabream (2019)](https://perma.cc/VQ2G-HDP5)<br>    - [Carp(2018)](https://perma.cc/3WCU-EHSY)<br>    - [Large trout in the EU (2020)](https://perma.cc/XV5N-6B5R) - with small rainbow trout consumption estimated using the difference between all trout and large large trout consumption.<br>        <br>Also contains salmon consumption estimates from the chart from page 42 of the [Mowi (2023) industry report](https://perma.cc/5BLM-5EB4) for France, Germany, Italy, Spain and Sweden only.<br><br>And contains EU country codes (from [Eurostat](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Glossary:Country_codes) |
| **chickens_per_dollar.csv** | Raw samples from the [Guesstimate model](https://www.getguesstimate.com/models/13441) estimating the historical cost-effectiveness of chicken campaigns from [Šimčikas (2019)](https://perma.cc/U9D2-AJ4D). Each column contains 5000 rows, with each row representing an individual monte carlo simulation result. - Total chickens affected per dollar  <br>- Broilers affected per dollar<br>- Layer hens affected per dollar<br>- Also contains the total number of hens affected by US and non-US cage free commitments. |
| **country populations.xlsx** | Population data for EU27 countries to estimate salmon consumption (from Eurostat) in each EU27 country. |
| **fishcount_living.xlsx** | [Spreadsheet](https://perma.cc/VB99-T48E) from fishcount.org, providing estimates of the mean slaughter weight and mean lifespan of the 24 most commonly farmed finfish species.\| |
| **welfarefootprintdatachickens.xlsx** | Datasets from the [Welfare Footprint Project](https://welfarefootprint.org/material/), estimating time in pain per system for conventional and reformed [layer hens](https://docs.google.com/spreadsheets/d/1B9U5uQBZdu6PiOMKbVUoSn08BIINb2G7ASbfZPm8dNc/edit#gid=1181313993) and [broiler chickens](https://docs.google.com/spreadsheets/d/1AcQ9WwhxAP_fnWourb8_OhLmoIszFrC9OB0AT3kGKGE/edit#gid=1181313993) respectively. |

### Code folder contents 

| Folder name | Contents |
| ---- | ---- |
| **0a Useful functions.R** | Contains functions used throughout the analysis, including:<br>- setting number of simulations<br>- seed for random number generation<br>- allowing statistical distributions to be defined using mean and standard deviation or 90% CI.<br>- Plot functions to quickly visualize distributions or quantiles of a distribution.<br>- Functions to save charts or tables.<br>- Functions to call vectors |
| **0b Assumptions for seabream,seabass and trout.R** | Assumptions regarding of seabream, seabass and small rainbow trout, including:<br>- Aggregate consumption in France, Italy and Spain<br>- Typical weight (live weight equivalent) at slaughter<br>- Slaughter duration<br>- Share stunned<br>- Typical lifespan |
| **0c Modelling assumptions.R** | Defines modelling assumptions used in the cost-effectiveness analyses, including:<br>- Implementation discount<br>- Number of years of credit<br>- Share of consumption going through grocery sector<br>- Market share of supermarkets who make commitments<br>- Probability of success<br>- Program costs<br>- Duration of intervention impact (relative to slaughter duration or lifespan)<br>- Impact of intervention (as a share of fish welfare range) |
| **1 EU farm finfish consumption by country and species.qmd** | Produces estimates and charts of total consumption of 5 farmed finfish species by country across EU27.<br><br>Note that most of this file estimates consumption of Salmon across the EU27, but this analysis did mostly not make it into the final publication. |
| **2 Introduction section charts.qmd** | Produces charts used in the introduction section of the report.      |
| **3 Main results - stunning intervention.qmd** | Main cost-effectiveness analysis file. Produces charts and tables used in the Results section of the report.  |
| **4 Annex results - speculative non-stunning intervention.qmd** | Cost-effectiveness analysis of non-slaughter intervention contained within Annex 2 of the report.  |
| **5 Time in pain exploration.qmd** | Exploratory analysis of extent to which time in different pain intensities might compare for fish stunning intervention to historical chicken interventions. |
| **6 Convert html to md.R** | File that renders all quarto codes into html, pdf and markdown format. |
