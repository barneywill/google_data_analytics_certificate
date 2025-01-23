# Prepare Data for Exploration

| |Index|
|---|---|
|1|Data collection|
|2|Data formats|
|3|Data model, Data Modeling|
|4|Data table|
|5|Data bias|
|6|Good data vs Bad data|
|7|Data ethics|
|8|Database|
|9|Data cleaning|
|10|Organizing data|

What to learn:
- How data is generated
- Features of different data types, fields, and values
- Database structures
- The function of metadata in data analytics
- Structured Query Language (SQL) functions
Skill sets to build:
- Ensuring ethical data analysis practices
- Addressing issues of bias and credibility
- Accessing databases and importing data
- Writing simple queries
- Organizing and protecting data
- Connecting with the data community (optional)

## 1 Data collection

### 1.1 How to collect
- Interviews
- Observations
- Forms
- questionnaires
- Surveys
- Cookies

### 1.2 Data sources
- First-party data: Data that you collect yourself
- Second-party data: collected directly by another group and then sold
- Third-party data: sold by a provider that didn’t collect the data themselves

### 1.3 Population, Sample
- Population: All possible data values in a certain dataset
- Sample: A part of a population that is representative of the population

## 2 Data formats

### 2.1 Qualitative data vs Quantitative data
- Qualitative data: A subjective and explanatory measure of a quality or characteristic
- Quantitative data: A specific and objective measure, such as a number, quantity, or range

### 2.2 Discreate data vs Continuous data
- Discreate data: Data that's counted and has a limited number of values
- Continuous data: Data that is measured and can have almost any numeric value

### 2.3 Nominal data vs Ordinal data
- Nominal data: A type of qualitative data that is categorized without a set order
- Ordinal data: A type of qualitative data with a set order or scale

### 2.4 Internal data vs External data
- Internal data: Data that lives within a company's own systems
- External data: Data that lives and is generated outside of an organization

### 2.5 Structured data vs Unstructured data
|Name|Definition|Examples|
|---|---|---|
|Structured data|Data organized in a certain format such as rows and columns|Spreadsheet, Database|
|Unstructured data|Data that is not organized in any easily identifiable manner|Audio, Video, Email, Posts|

![Structured Data](https://github.com/barneywill/google_data_analytics_certificate/blob/main/imgs/structured_data.jpg)

## 3 Data model, Data Modeling

### 3.1 Data model
- Data model: A model that is used for organizing data elements and how they relate to one another.
- Data elements: Pieces of information, such as people's names, account numbers, and addresses

### 3.2 Data modeling
the process of creating diagrams that visually represent how data is organized and structured.

#### Level
- Conceptual data modeling: gives a high-level view of the data structure
- Logical data modeling: focuses on the technical details of a database such as relationships, attributes, and entitie
- Physical data modeling: includes table names, column names, and data types for the database.

#### Techniques
- Entity Relationship Diagram (ERD): a visual way to understand the relationship between entities in the data model.
- Unified Modeling Language (UML): detailed diagrams that describe the structure of a system by showing the system's entities, attributes, operations, and their relationships.

## 4 Data table

### 4.1 Table Structure
- Rows/Records
- Columns/Fields

### 4.2 Table Type
- Wide table: a dataset in which every data subject has a single row with multiple columns to hold the values of various attributes of the subject.
- Long table: data in which each row represents one observation per subject, so each subject will be represented by multiple rows.

### 4.3 Data types

#### Spreadsheet
- Number
- Text
- Boolean

## 5 Data bias
- Bias: A preference in favor of or against a person, group of people, or nothing
- Data bias: A type of error that systematically skews results in a certain direction

### 5.1 Data bias types
|Type|Definition|
|---|---|
|Sampling bias|A sample that isn't representative of the population as a whole|
|Observer/experimenter/research bias|The tendency for different people to observe things differently|
|Interpretation bias|The tendency to always interpret ambiguous situations in a positive or negative way|
|Confirmation bias|The tendency to search for or interpret information in a way that confirms pre-existing beliefs|

## 6 Good data vs Bad data

### 6.1 Good data
- Reliable
- Original
- Comprehensive
- Current
- Cited

### 6.2 Bad data
the opposite of above

## 7 Data ethics
- Ethics: Well-founded standards of right and wrong that prescribe what humans ought to do, usually in terms of rights, obligations, benefits to society, fairness, or specific virtues.
- Data ethics: Well-founded standards of right and wrong that dictate how data is collected, shared, and used
- GDPR: General Data Protection Regulation of the European Union

### 7.1 Aspects of data ethics
- Ownership
- Transaction transparenncy
- Consent
- Currency
- Privacy
- Openness

#### Data anonymization
the process of protecting people's private or sensitive data by eliminating that kind of information. Typically, data anonymization involves blanking, hashing, or masking personal information, often by using fixed-length codes to represent data columns, or hiding data with altered values. 
- de-identification: a process used to wipe data clean of all personally identifying information.

#### Open data
- https://www.data.gov/
- https://www.census.gov/data.html
- https://www.opendatanetwork.com/
- https://cloud.google.com/datasets
- https://datasetsearch.research.google.com/
- https://cloud.google.com/public-datasets
- https://www.kaggle.com/datasets?utm_medium=paid&utm_source=google.com+search&utm_campaign=datasets&gclid=CjwKCAiAt9z-BRBCEiwA_bWv-L6PpACh6RzmrJjQjmNGCCE7kky1FCtc6Jf1qld-4NwDMYL0WsUyxBoCdwAQAvD_BwE
- https://cloud.google.com/bigquery/public-data

## 8 Database
- Database: A collection of data stored in a computer system
- Relational database: A database that contains a series of related tables that can be connected via their relationships

### 8.1 Key
- Primary key: An identifier that references a column in which each value is unique. Uniquely identifies a record in a relational database table.
- Foreign key: A field within a table that is a primary key in another table

### 8.2 SQL

### 8.3 metadata
Data about data. 
It clearly describes how and when data was collected and how it’s organized.
- Descriptive: describes a piece of data and can be used to identify it at any time
- Structural: describes how many locations contain a certain piece of data
- Administrative: indicates the technical source of a digital asset

### 8.4 Data governance
A process to ensure the formal management of a company's data assets.

## 9 Data cleaning
Data cleaning corrects or removes incorrect, missing, and faulty data. Cleaning data is of critical importance because an analysis based on dirty data can lead to wrong conclusions and bad decisions.

### 9.1 Spreadsheet
Sorting and Filtering

## 10 Organizing data
- Naming conventions
  - CamelCase
  - snake_case
- Foldering
- Archiving older files
- Align your naming and storage practices with your team
- Develop metadata practices

### File-naming conventions
File names are supposed to be meaningful, consistent, and easy-to-read. File names should include:
- The project’s name
- The file creation date
- Revision version
- Consistent style and order

## 11 Data security
protecting data from unauthorized access or corruption by putting safety measures in place.
- Encryption: uses a unique algorithm to alter data and make it unusable by users and applications that don’t know the algorithm.
- Tokenization: replaces the data elements you want to protect with randomly generated data referred to as a “token.”

