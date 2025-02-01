# Process Data from Dirty to Clean

| |Index|
|---|---|
|1|Data integrity|
|2|Dirty data|
|3|Spreadsheet functions vs SQL|
|4|Verification|
|5|Case study|


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
Cleaning data is an important part of the data analysis process. If data analysis is based on bad or “dirty” data, it may be biased, erroneous, and uninformed.
- Fixing misspellings
- Inconsistent capitalization
- Incorrect punctuation and other types

### 2.4 Common mistakes
- Not checking for spelling errors
- Forgetting to document errors
- Not checking for misfielded values
- Overlooking missing values
- Only looking at a subset of the data
- Losing track of business objectives
- Not fixing the source of the error
- Not analyzing the system prior to data cleaning
- Not backing up your data prior to data cleaning
- Not accounting for data cleaning in your deadlines/process

### 2.5 Cleaning checklist
- Determine the size of the dataset
- Determine the number of categories or labels
- Identify missing data
- Identify unformatted data
- Explore the different data types

## 3 Spreadsheet functions vs SQL
|Spredsheet|SQL|
|---|---|
|LEN(A2)|length(col1)|
|LEFT(A2, 5)|substr(col1, 1, 5), |
|RIGHT(A2, 4)|substr(col1, -4, 4)|
|MID(D2, 4, 2)|substr(col1, 4, 2)|
|FIND(" ", C3)|position('ab' in 'abc')
|TRIM(C2)|trim(col1)|
|CONCATENATE(H2, I2)|concat(col1, '.', col2), concat_ws('.', col1, col2)|
| |select col1, group_concat(col2) from tb1 group by col1|
|SPLIT(F2, "-")|substring_index(col1, '-', 1), substring_index(col1, '-', -1)|
|UNIQUE(C:C)|distinct col1|
|SORT(C:C)|sort by col1|
|COUNT(C:C)|count(col1)|
|COUNTIF(I2:I72, ">100")|select count(col1) from tb1 where col1 > 100|
|SUM(C:C)|sum(col1)|
|SUMIF(B3:B50, "=1", C3:C50)|select sum(col1) from tb1 where col2 = 1|
|SUMPRODUCT(B3:B7,C3:C7)|select sum(col1*col2) from tb1|
|AVERAGE(C:C)|avg(col1)|
|DATEDIF(B2,C2,"M")|DATEDIFF(date1, date2)|
| |DATE_FORMAT("2017-06-15", "%Y")|
|VLOOKUP(G3,\$B\$4:\$D\$8,3,FALSE)|select tb1.*, tb2.col2 from tb1 left join tb2 on tb1.col1 = tb2.col1|
|FILTER(A2:B26, A2:A26 > 5, D2:D26 < 10)|where col1 > 5|
|IF(A2>0, "N", A2)|case when col1 > 0 then 'N' else col1 end|
|VALUE(A2), TEXT(B2,"mmmm")|cast(col1 as float)|
| |ifnull(col, 0), coalesce(col1, 0)|
| |round(col1, 2)|
|IMPORTRANGE("https://docs.google.com/thisisatestabc123", "sheet1!A1:F13")|insert into tb2 select * from tb1|
|Pivot Table|group by col1|

## 4 Verification
A process to confirm that a data-cleaning effort was well-executed and the resulting data is accurate and reliable

### 4.1 Verification checklist
- Sources of errors: Did you use the right tools and functions to find the source of the errors in your dataset?
- Null data: Did you search for NULLs using conditional formatting and filters?
- Misspelled words: Did you locate all misspellings?
- Mistyped numbers: Did you double-check that your numeric data has been entered correctly?
- Extra spaces and characters: Did you remove any extra spaces or characters using the TRIM function?
- Duplicates: Did you remove duplicates in spreadsheets using the Remove Duplicates function or DISTINCT in SQL?
- Mismatched data types: Did you check that numeric, date, and string data are typecast correctly?
- Messy (inconsistent) strings: Did you make sure that all of your strings are consistent and meaningful?
- Messy (inconsistent) date formats: Did you format the dates consistently throughout your dataset?
- Misleading variable labels (columns): Did you name your columns meaningfully?
- Truncated data: Did you check for truncated or missing data that needs correction?
- Business Logic: Did you check that the data makes sense given your knowledge of the business? 

### 4.2 Changelog
A file containing a chronologically ordered list of modifications made to a project
- Recover data-cleaning errors
- Inform other users of changes
- Determine quality of data

### 4.3 Types of changes
- Added: new features introduced
- Changed: changes in existing functionality
- Deprecated: features about to be removed
- Removed: features that have been removed
- Fixed: bug fixes
- Security: lowering vulnerabilities

## 5 Case study
| |Category|Case|
|---|---|---|
|1|Proxy data|Proxy data|
