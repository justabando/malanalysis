# Readme for Project

## Overview

This readme contains information to navigate the analysis of anime popularity on MyAnimeList (abbreviated as MAL) by Justin Abando.

## File Structure

This repo is structured as follows: 

* `input/data` contains the raw data source used to produce all of the results and analysis within the report.
* `outputs/data` contains the cleaned data set constructed from the raw data set from Kaggle.
* `outputs/paper` contains the files used to generate the final report in .pdf and .qmd formats, complete with reference bibliography in BibTex format.
-   `scripts` contains the R scripts used to perform the preliminary work to simulate, download and clean the data set. 

## Raw Data Acquisition

The raw data was obtained from Kaggle by Andreu Vall Hernandez, who used the MAL and Jikan API to aggregate information on the anime on the MAL database, which can be found [here](https://www.kaggle.com/datasets/andreuvallhernndez/myanimelist), with a description of how the API was used to obtain the data from their repo [here](https://github.com/andreu-vall/myanimelist-api-scraping). 