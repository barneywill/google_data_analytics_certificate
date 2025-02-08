# Data Analysis with R Programming

| |Index|
|---|---|
|1.1|Packages|
|1.2|Pipe|
|1.3|Data types|
|1.4|Operators|
|1.5|Data structures|
|1.6|Date, time|
|1.7|Files|
|1.8|Datasets|
|1.9|If|
|1.10|Biased data|
|1.11|R Markdown|
|1.12|Case study|

What to learn:
- Programming languages and environments
- R packages
- R functions, variables, data types, pipes, and vectors
- R data frames
- Bias and credibility in R
- R visualization tools
- R Markdown for documentation, creating structure, and emphasis

Skill sets to build:
- Coding in R
- Writing functions in R
- Accessing data in R
- Cleaning data in R
- Generating data visualizations in R
- Reporting on data analysis to stakeholders

## 1 R
R is a programming language used for statistical analysis, visualization, and other data analysis. 

### 1.1 Packages
Units of reproducible R code
- Resuable R functions
- Documentation about the functions
- Sample datasets
- Tests for checking your code

```
installed.packages()

update.packages()

browseVignettes("ggplot2")

library('class')
```

#### 1.1.1 CRAN(Comprehensive R Archive Network)
the most commonly used repository

CRAN stores code and documentation so that you can install packages into your own RStudio space. 

#### 1.1.2 Tidyverse
the tidyverse is a collection of R packages specifically designed for working with data: manipulation, exploration, and visualization
- ggplot2: Create a variety of data viz by applying different visual properties to the data variables in R
- tidyr: A package used for data cleaning to make tidy data
- readr: Used for importing data
- dplyr: Offers a consistent set of functions that help you complete some common data manipulation tasks
- tibble: streamlined data frames
- purrr
- stringr
- forcats

```
install.packages("tidyverse")
library(tidyverse) 

data("diamonds")
mutate(diamonds, carat_2=carat*100)
diamonds %>% mutate(carat_2=carat*100)

separate(employee, name, into=c('first_name', 'last_name'), sep=' ')
unite(employee, 'name', first_name, last_name, sep=' ')
mutate(employee, name=first_name + ' ' + last_name)

?mutate
```

![Tidyverse](https://github.com/barneywill/google_data_analytics_certificate/blob/main/imgs/tidyverse.jpg)

#### 1.1.3 ggplot2
The ggplot2 package lets you make high quality, customizable plots of your data. 
The ggplot2 is based on the grammar of graphics, which is a system for describing and building data visualizations
- Create different types of plots
- Customize the look and feel of plots
- Create high quality visuals
- Combine data manipulation and visualization

The ggplot() function creates a coordinate system that you can add layers to. The first argument of the ggplot() function is the dataset to use in the plot.

+: Then, you add a “+” symbol to add a new layer to your plot.

The x and y arguments of the aes() function specify which variables to map to the x-axis and the y-axis of the coordinate system. 
```
library(ggplot2)
data("diamonds")
view(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)

ggplot(data = penguins) + 
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species, size=species, alpha=species)) +
    geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype=species))

ggplot(data = penguins) + 
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
    facet_grid(sex~species)

ggplot(diamonds) + 
    geom_bar(mapping=aes(x=cut, fill=cut))

ggplot(diamonds) + 
    geom_bar(mapping=aes(x=cut, fill=clarity))

ggplot(diamonds) + 
    geom_bar(mapping=aes(x=color, fill=cut)) +
    facet_wrap(~cut)
```

##### 1.1.3.1 Aesthetics
A visual property of an object in your plot.
An aesthetic is like a connection, or mapping, between a visual feature in your plot and a variable in your data. For example, in a scatterplot, aesthetics include things like the size, shape, color, or location (x-axis, y-axis) of your data points. 

##### 1.1.3.2 Geoms
The geometric object used to represent your data, use points to create a scatterplot, bars to create a bar chart, lines to create a line diagram, etc.
- geom_point
- geom_bar 
- geom_line
- geom_smooth
- geom_jitter

###### Smoothing
Smoothing helps data professionals reveal trends.
- Loess smoothing: The loess smoothing process is best for smoothing plots with less than 1000 points.
  - geom_smooth(method="loess")
- Gam smoothing: Gam(generalized additive model) smoothing, or generalized additive model smoothing, is useful for smoothing plots with a large number of points. 
  - geom_smooth(method="gam", formula = y ~s(x))

##### 1.1.3.3 Facets
Let you display smaller groups, or subsets, of your data
- facet_wrap()
- facet_grid()

Tilde operator is used to define the relationship between dependent variable and independent variables in a statistical model formula. The variable on the left-hand side of tilde operator is the dependent variable and the variable(s) on the right-hand side of tilde operator is/are called the independent variable(s). So, tilde operator helps to define that dependent variable depends on the independent variable(s) that are on the right-hand side of tilde operator.
```
ggplot(data=penguins) + 
    geom_point(aes(x=flipper_length_mm,y=body_mass_g, shape=species, color=species)) + 
    facet_wrap(~species)
```

##### 1.1.3.4 Labels and annotations
Let you customize your plot
- Titles
- Subtitles
- Captions

```
ggplot(data = penguins) + 
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
    labs(title='test title', subtitle='test subtitle', caption='test caption') +
    annotate('text', x=220, y=3500, label='test label', color='purple', fontface='bold', size=4.5, angle=25)
```

https://rstudio.github.io/cheatsheets/data-visualization.pdf

![ggplot2](https://github.com/barneywill/google_data_analytics_certificate/blob/main/imgs/ggplot2.jpg)

##### 1.1.3.5 Others
- Plotly
- Lattice
- RGL
- Dygraphs
- Leaflet
- Highcharter
- Patchwork
- gganimate
- ggridges

##### 1.1.3.6 ggsave
```
# default last plot
ggsave('filename')
```

###### Others
- png()
- pdf()

#### 1.1.4 tibbles
- Efficiently explore data
- Maintain consistency and data integrity
- Integrate with the tidyverse

```
data("diamonds")
diamonds_tibble <- as_tibble(diamonds)
diamonds_tibble
```

#### 1.1.5 readr
The readr package in R is a great tool for reading rectangular data.
- read_csv(): comma-separated values (.csv) files
- read_tsv(): tab-separated values files
- read_delim(): general delimited files
- read_fwf(): fixed-width files
- read_table(): tabular files where columns are separated by white-space
- read_log(): web log files
```
readr_example()

read_csv(readr_example("mtcars.csv"))
```

#### 1.1.6 readxl
```
library(readxl)

readxl_example()

read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")
```

#### 1.1.7 tidyr
convert wide data to long data or long to wide
- wide data: has observations across several columns
- long data: has all the observations in a single column, and the variable conditions are placed into separate rows. 
```
pivot_longer()
pivot_wider()
```

#### 1.1.8 dplyr
```
install.packages('dplyr')
library('dplyr')

install.packages('here')
library('here')

install.packages('janitor')
library('janitor')

install.packages('skimr')
library('skimr')

skim_without_charts(penguins)
glimpse(penguins)

penguins %>%
    select(species)

penguins %>%
    select(-species)

penguins %>% arrange(bill_length_mm)
penguins %>% arrange(-bill_length_mm)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))
penguins %>% filter(species == 'Adelie')

data %>%
    filter(variable1 == "DS") %>%  
    ggplot(aes(x = weight, y = variable2, colour = variable1)) +  
    geom_point(alpha = 0.3,  position = position_jitter()) + stat_smooth(method = "lm")

penguins %>%
    rename(island_new=island)

rename_with(penguins, toupper)

clean_names(penguins)
```

#### 1.1.9 Tmisc
```
install.packages('Tmisc')
library(Tmisc)
data(quartet)
view(quartet)

ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)
```

#### 1.1.10 datasauRus
```
install.packages('datasauRus')
library('datasauRus')
data(datasaurus_dozen)
view(datasaurus_dozen)

ggplot(datasaurus_dozen, aes(x=x,y=y,colour=dataset)) + geom_point() + theme_void() + theme(legend.position='none') + facet_wrap(~dataset, ncol=3)
```

#### 1.1.11 SimDesign
```
install.packages('SimDesign')
library(SimDesign)

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)
```

### 1.2 Pipe
A tool in R for expressing a sequence of multiple operations, represented with '%>%'

#### Nested
In programming, describes code that performs a particular function and is contained within code that performs a broader function

```
# nested
arrange(filtered_tg <- filter(ToothGrowth, dose == 0.5), len)

# pipe
filtered_toothgrowth <- ToothGrowth %>%
    filter(dose == 0.5) %>%
    arrange(len)

filtered_toothgrowth <- ToothGrowth %>%
    filter(dose == 0.5) %>%
    group_by(supp) %>%
    summarize(mean_len = mean(len, na.rm = T), group = 'drop')
```

### 1.3 Data types
logical, integer, double, character (which contain strings), complex, and raw

### 1.4 Operators
```
# Assignment 
x <- 2
s <- "hello"

# Arithmetic 
x + y
x - y
x * y
x / y
y %% x
y %/% x
y ^ x

# Relational 
&
|
!
```

### 1.5 Data structures
vectors, data frames, matrices, and arrays

#### 1.5.1 Vector
In R, a vector is a group of data elements of the same type, stored in a one-dimensional sequence. Vectors can only contain data of one type. 

In R, the indices of elements start with 1, so to refer to the first element in a vector you would use the code x[1].

##### atomic vectors
logical, numeric, or character

##### numeric vectors
integers or double

##### code
```
c(2.5, 48.5, 101.5)
c(1L, 5L, 15L)
c("Sara" , "Lisa" , "Anna")
c(TRUE, FALSE, TRUE)

z <- c(4:10)

typeof(c("a" , "b"))

x <- c(2L, 5L, 11L)
is.integer(x)
length(x)

y <- c(TRUE, TRUE, FALSE)
is.character(y)

x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x
x["a"]
x[1]

```

#### 1.5.2 Lists
Lists are different from atomic vectors because their elements can be of any type—including characters, integers, and logical values. Lists can even contain other lists, matrices, vectors, or data frames. 

##### code
```
list("a", 1L, 1.5, TRUE)

list(list(list(1 , 3, 5)))

str(list("a", 1L, 1.5, TRUE))

z <- list(list(list(1 , 3, 5)))
str(z)

z <- list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)
z['Chicago']
```

#### 1.5.3 Data frames
A data frame is a collection of columns containing data, similar to a spreadsheet or SQL table. Each column has a name that represents a variable and includes one observation per row.
- Data frames can include many different types of data, including numeric, logical, or character.
- Data frames can have only one element in each cell.
- Each column should be named. 
- Each column should consist of elements of the same data type.

```
z <- data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
print(z)
z[2,1]
z[1]
```

#### 1.5.4 Matrices
A matrix is a two-dimensional collection of data elements. This means it has both rows and columns.
```
matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)
```

### 1.6 Date, time
```
install.packages("tidyverse")
library(tidyverse)
library(lubridate)

today()
now()
as_date(now())

ymd("2023-01-20")
ymd(20210120)
mdy("January 20th, 2023")
dmy("20-Jan-2021")

ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")
```


### 1.7 Files
```
file.create("new_text_file.txt") 
file.create("new_word_file.docx") 
file.create("new_csv_file.csv") 

file.copy("new_text_file.txt", "destination_folder")

unlink("some_.file.csv")

```

### 1.8 Datasets
```
data("airquality")
view(airquality)

airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10
airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10
!(airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10)
airquality[, "Day"] != 1

data('ToothGrowth')
view(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose == 0.5)
arrange(filtered_tg, len)
```

### 1.9 If
A conditional statement is a declaration that, if a certain condition holds, then a certain event must take place.
```
x <- -1
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}
```

### 1.10 Biased data
R programming offers a diverse toolkit for addressing data bias in various domains. 
- bias()

### 1.11 R Markdown (RMD) Notebook
A file format for making dynamic documents with R.
Lets users run your code and show the graphs and charts that visualize the code.

YAML is a language used in data files to improve human readability, and the YAML header section exists to provide information about a document to the humans reading it.

#### Markdown
A syntax for formatting plain text files

```
install.packages('rmarkdown')
```

#### code chunk
delimiters
```
#```{r}
#```
```

##### Output option

#### Knit
The knit button creates a shareable HTML report of the R Markdown file. 

#### Others
Jupyter notebooks are documents that contain computer code and rich text elements – such as comments, links, or descriptions of your analysis and results.
- Jupyter
  - JupyterLab – the web-based interactive development environment for Jupyter notebooks, code, and data. 
- Kaggle
- Google Colab

### 1.12 Case study
| |Category|Case|
|---|---|---|
|1|Bias|Biased Data|


