# Process Data from Dirty to Clean

| |Index|
|---|---|
|1|Data integrity|



What to learn:
- Data integrity and the importance of clean data
- The tools and processes used by data analysts to clean data
- Data-cleaning verification and reports
- Statistics, hypothesis testing, and margin of error
- Resume building and interpretation of job postings (optional)

Skill sets to build:
- Connecting business objectives to data analysis
- Identifying clean and dirty data
- Cleaning small datasets using spreadsheet tools
- Cleaning large datasets by writing SQL queries
- Documenting data-cleaning processes

## 1 Data integrity
The accuracy, completeness, consistency, and trustworthiness of data throughout its lifecycle.
- Accuracy: The degree to which the data conforms to the actual entity being measured or described
- Completeness: The degree to which the data contains all desired components or measures
- Consistency: The degree to which the data is repeatable from different points of entry or collection
- Cross-field validation: Certain conditions for multiple fields must be satisfied

### 1.1 Data issues

#### no data
- Gather the data on a small scale to perform a preliminary analysis and then request additional time to complete the analysis after you have collected more data. 
- If there isn’t time to collect data, perform the analysis using proxy data from other datasets. This is the most common workaround.

#### too little data
- Do the analysis using proxy data along with actual data.
- Adjust your analysis to align with the data you already have.

#### wrong data, including data with errors*
- If you have the wrong data because requirements were misunderstood, communicate the requirements again.
- Identify errors in the data and, if possible, correct them at the source by looking for a pattern in the errors.
- If you can’t correct data errors yourself, you can ignore the wrong data and go ahead with the analysis if your sample size is still large enough and ignoring the data won’t cause systematic bias. 

![Data Error](https://github.com/barneywill/google_data_analytics_certificate/blob/main/imgs/data_errors.jpg)


### 1.2 Random sampling
A way of selecting a sample from a population so that every possible type of the sample has an equal chance of being chosen
- Margin of error: The maximum amount that the sample’s results are expected to differ from those of the actual population.
- Confidence level: How confident you are in the survey results. For example, a 95% confidence level means that if you were to run the same survey 100 times, you would get similar results 95 of those 100 times. Confidence level is targeted before you start your study because it will affect how big your margin of error is at the end of your study. 
- Confidence interval: The range of possible values that the population’s result would be at the confidence level of the study. This range is the sample result +/- the margin of error.
- Statistical significance: The determination of whether your result could be due to random chance or not. The greater the significance, the less due to chance.

#### More
- Don’t use a sample size less than 30.
- Larger sample sizes have a higher cost
- In most cases, a 90% or 95% confidence level is used.
- Sample size calculator: enter a desired confidence level and margin of error for a given population size
  - https://www.surveymonkey.com/mp/sample-size-calculator/
  - http://www.raosoft.com/samplesize.html

#### Statistical power
The probability of getting meaningful results from a test. At least 80%.

## 2 Dirty Data
Dirty data can have a significant impact on analyses, leading to inaccurate insights, poor decision-making, and revenue loss.

Data validation: A tool for checking the accuracy and quality of data before adding or importing it

### 2.1 Dirty data vs Clean data
- Dirty data: Data that is incomplete, incorrect, or irrelevant to the problem you're trying to solve.
- Clean data: Data that is complete, correct, and relevant to the problem you're trying to solve.

- Data engineers: Transform data into a useful format for analysis and give it a reliable infrastructure
- Data warehousing specialists: Develop processes and procedures to effectively store and organize data

### 2.2 Types of dirty data
- Duplicate data: Any data record that shows up more than once
- Outdated data: Any data that is old which should be replaced with newer and more accurate information
- Incomplete data: Any data that is missing important fields
- Incorrect/inaccurate data: Any data that is complete but inaccurate
- Inconsistent data: Any data that uses different formats to represent the same thing

### 2.3 Data cleaning
- Fixing misspellings
- Inconsistent capitalization
- Incorrect punctuation and other types



## Case study
| |Category|Case|
|---|---|---|
|1|Proxy data|Proxy data|
