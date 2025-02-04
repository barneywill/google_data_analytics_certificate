# Share Data Through the Art of Visualization

| |Index|
|---|---|
|1|Data visualization|
|2|Types of visualization|
|3|The elements of art|
|4|Principles of design|
|5|Highlight key informatio|
|6|Tableau|
|7|Effective visualization|
|8|Data storytelling|
|9|Presentation|
|10|Case study|

What to learn:
- Design thinking
- How data analysts use visualizations to communicate about data
- The benefits of Tableau for presenting data analysis findings
- Data-driven storytelling
- Dashboards and dashboard filters
- Strategies for creating an effective data presentation

Skill sets to build:
- Creating visualizations and dashboards in Tableau
- Addressing accessibility issues when communicating about data
- Understanding the purpose of different business communication tools
- Telling a data-driven story
- Presenting to others about data
- Answering questions about data

## 1 Data visualization
The graphic representation and presentation of data
- Looking at visuals in order to understand and draw conclusions about data
- Creating visuals using raw data to tell a story

People won’t always have the ability to interpret or understand the complex information that you relay to them so your job is to inform them of your analysis in a way that is meaningful, engaging, and easy to understand.

https://visme.co/blog/best-data-visualizations/

https://datavizcatalogue.com/#google_vignette

https://www.tableau.com/learn/articles/best-data-visualization-blogs


### 1.1 The David McCandless method 
Visual form without a goal, story, or data could be a sketch or even art. 
Data in visual form without a goal or function is just a pretty picture. 
Data with a goal but no story or visual form can be boring. 
All four elements need to be present to create an effective visual.
- Information: the data with which you’re working, reflects the conclusion you’ve drawn from the data, which you will communicate with visualization
- Story: a clear and compelling narrative or concept, adds meaning to the data and makes it interesting
- Goal: a specific objective or function for the visual, makes the data usable and useful
- Visual form: an effective use of metaphor or visual expression, creates both beauty and structure

#### Steps
- 1. Introduce the graphic by name
- 2. Answer obvious questions before they’re asked
- 3. State the insight of your graphic
- 4. Call out data to support that insight
- 5. Tell your audience why it matters

https://www.ted.com/talks/david_mccandless_the_beauty_of_data_visualization#t-150183

https://artscience.ai/blog/

https://informationisbeautiful.net/beautifulnews/

![Data visualization](https://github.com/barneywill/google_data_analytics_certificate/blob/main/imgs/data_visualization.jpg)

### 1.2 Kaiser Fung’s Junk Charts trifecta checkup
Use these questions to determine if your data visualization is effective:
- What is the practical question? 
- What does the data say?
- What does the visual say?

### 1.3 Pre-attentive attributes
The elements of a data visualization that people recognize automatically and without conscious effort. 

#### 1.3.1 Marks
Marks are basic visual objects such as points, lines, and shapes. Every mark can be broken down into four qualities:
- 1. Position: Where is a specific mark in space relative to a scale or to other marks? 
- 2. Size: How big, small, long, or tall is a mark?
- 3. Shape: Does the shape of a specific object communicate something about it?
- 4. Color: What color is a mark?

#### 1.3.2 Channels
Channels are visual aspects or variables that represent characteristics of the data in a visualization.
- 1. Accuracy: Are the channels helpful in accurately estimating the values being represented?
- 2. Popout: How easy is it to distinguish certain values from others?
- 3. Grouping: How effective is a channel at communicating groups that exist in the data?

## 2 Types of visualization
What is the best way to tell the story within my data?
- Bar/Column graphs: Use size contrast to compare two or more values
  - Stacked column charts
  - Ranked bar charts
- Line charts: Used to track changes over short and long periods of time. 
  - When smaller changes exist, line charts are better to use than bar graphs.
- Combo charts: Column + Line
- Pie charts: Show how much each part of something makes up the whole
  - The pie chart is a circular graph that is divided into segments representing proportions corresponding to the quantity it represents, especially when dealing with parts of a whole.
- Heatmap: Use color to compare categories in a data set.
- Scatterplot: Show relationships between different variables.
- Distribution graph: Display the spread of various outcomes in a dataset. 
- Maps: Help organize data geographically
- Time series charts
- Histogram: A chart that shows how often data values fall into certain ranges
  - Histograms are drawn with no gaps between the bars, representing numerical data, while bar graphs show rectangular bars with length proportional to the values they represent.
- Correlation charts: Show relationships among data

### 2.1 Decision tree
A decision tree is a flowchart that you can use to help frame larger decisions as a series of smaller yes/no decisions.
- If you have data that has one, continuous, numerical variable, then a histogram or density plot are the best methods of plotting your categorical data. Depending on your type of data, a bar chart can even be appropriate in this case.
- For cases dealing with more than one set of data, consider a line or pie chart for accurate representation of your data. 
  - A line chart will connect multiple data sets over a single, continuous line, showing how numbers have changed over time. 
  - A pie chart is good for dividing a whole into multiple categories or parts. 
- A line chart is usually adequate for plotting trends over time. 
-  When you have two variables for one set of data, it is important to point out how one affects the other. Variables that pair well together are best plotted on a scatterplot. However, if there are too many data points, the relationship between variables can be obscured so a heat map can be a better representation in that case.

![Decision Tree](https://github.com/barneywill/google_data_analytics_certificate/blob/main/imgs/bi_decision_tree.jpg)

### 2.2 Best practices
- Your audience should know what they are observing within five seconds of being shown a data visualization. Visuals should be clear and easy to follow. 
- In the five seconds after that, your audience should understand the conclusion your visualization is making—even if they aren’t familiar with your research. 
- As long as it’s not misleading, you should visually represent only the data that your audience needs to understand your findings. Including irrelevant data may confuse, distract, or overwhelm your audience.


### 2.3 Patterns
- Change: This is a trend or instance of observations that become different over time. A great way to measure change in data is through a line or column chart.
- Clustering: A collection of data points with similar or different values. This is best represented through a distribution graph.
- Relativity: These are observations considered in relation or in proportion to something else. You have probably seen examples of relativity data in a pie chart.
- Ranking: This is a position in a scale of achievement or status. Data that requires ranking is best represented by a column chart.
- Correlation: This shows a mutual relationship or connection between two or more things. A scatterplot is an excellent way to represent this type of data pattern.

### 2.4 Correlation and causation
- Correlation in statistics is the measure of the degree to which two variables move in relationship to each other.
- Causation: Occurs when an action directly leads to an outcome

https://www.khanacademy.org/test-prep/praxis-math/praxis-math-lessons/gtp--praxis-math--lessons--statistics-and-probability/a/gtp--praxis-math--article--correlation-and-causation--lesson

## 2.5 Dynamic visualization
- Static visualizations: Don't change over time unless they're edited
- Dynamic visualizations: Visualizations that are interactive or change over time

## 3 The elements of art
- Line
- Shape
- Color
  - Hue
  - Intensity: how bright or dull
  - Value: The color’s lightness or darkness
- Space
- Movement

## 4 Principles of design
- 1. Balance: The design of a data visualization is balanced when the key visual elements, like color and shape, are distributed evenly.
- 2. Emphasis: Your data visualization should have a focal point, so that your audience knows where to concentrate. 
- 3. Movement: Movement can refer to the path the viewer’s eye travels as they look at a data visualization, or literal movement created by animations.
- 4. Pattern: You can use similar shapes and colors to create patterns in your data visualization.
- 5. Repetition: Repeating chart types, shapes, or colors adds to the effectiveness of your visualization. 
- 6. Proportion: Proportion is another way that you can demonstrate the importance of certain data. 
- 7. Rhythm: This refers to creating a sense of movement or flow in your visualization.
  - Rhythm is closely tied to the movement principle.
- 8. Variety: Your visualizations should have some variety in the chart types, lines, shapes, colors, and values you use. 
- 9. Unity: The last principle is unity. This means that your final data visualization should be cohesive.

## 5 Highlight key informatio
- Headlines: Briefly describe the data
- Subtitles: Clarify context for the data
- Labels: Replace the need for legends
- Annotations: Draw attention to certain data

## 6 Tableau
A business intelligence and analytics platform that helps people see, understand, and make decisions with data

### 6.1 Types of data
- #: Numeric data
- Abc: String data
- Globe: Geographic data
- Calendar: Date data
- Calendar: Date and time data

### 6.2 Data elements
- Dimensions: contain qualitative values (such as names, dates, or geographical data). To categorize, segment, and reveal the details in your data.
- Measures: contain numeric, quantitative values that you can measure. Measures can be aggregated. 


A diverging palette displays two ranges of values using color intensity to indicate magnitude.

### 6.3 Avoid misleading or deceptive charts
- Cutting off the y-axis
- Misleading use of a dual y-axis
- Artificially limiting the scope of the data
- Problematic choices in how data is binned or grouped
- Using part-to-whole visuals when the totals do not sum up appropriately 
- Hiding trends in cumulative charts
- Artificially smoothing trends

### 6.4 Dashboard
A tool that organizes information from multiple datasets into one central location for tracking, analysis, and simple visualization

https://medium.com/towards-data-science/the-ultimate-cheat-sheet-on-tableau-charts-642bca94dde5

https://public.tableau.com/app/profile/grow.with.google/vizzes#!/

## 7 Effective visualization
The key to effective presentations is data visualizations that are clear and convincing. In turn, the key to effective visualizations is selecting the best way to depict your data. 
- Five-second rule: A data visualization should be clear, effective, and convincing enough to be absorbed in five seconds or less.
- Color contrast: Graphs and charts should use a diverging color palette to show contrast between elements.
- Conventions and expectations: Visuals and their organization should align with audience expectations and cultural conventions. For example, if the majority of your audience associates green with a positive concept and red with a negative one, your visualization should reflect this.
- Minimal labels: Titles, axes, and annotations should use as few labels as it takes to make sense. Having too many labels makes your graph or chart too busy. It takes up too much space and prevents the labels from being shown clearly.

## 8 Data storytelling
Communicating the meaning of a dataset with visuals and a narrative that are customized for each particular audience.
- In data analytics, data storytelling is communicating the meaning of a dataset with visuals and a narrative that is customized for a particular audience. 
- In data journalism, journalists engage their audience of readers by combining visualizations, narrative, and context into data-driven articles.

### 8.1 Steps
- Engage your audience
  - Engagement: Capturing and holding someone's interest and attention
- Create compelling visuals
- Tell the story in an interesting narrative

### 8.2 Spotlighting
Scanning through data to quickly identify the most important insights

### 8.3 Storytelling
A data story must have a good plot (theme and flow), good dialogue (talking points), and a great ending or big reveal (results and conclusions).
- Characters
- Setting
- Plot
- Big reveal
- Aha moment

## 9 Presentation
Good presentation: people are logically guided through the data – from the objectives at the beginning all the way to the conclusions at the end.

A good presentation gives people in the audience the facts and data, helps them understand what the data means, and provides takeaways about how they can use their understanding to make a change or do some good.
- Include a title, subtitle, and date
- Use a logical sequence of slides
- Provide an agenda with a timeline
- Limit the amount of text on slides
- Start with the business task
- Establish the initial hypothesis
- Show what business metrics you used
- Use visualizations
- Introduce the graphic by name
- Provide a title for each graph
- Go from the general to the specific
- Use speaker notes to help you remember talking points
- Include key takeaways

### 9.1 Presentation tips
- Channel your excitement
- Start with the broader ideas
- Use the five second rule
  - Wait five seconds after showing a data visualization
  - Ask if they understand
  - Give your audience another five seconds
  - Tell them the conclusion
- Preparation is key

### 9.2 Slide deck layout
- First slide: Agenda 
  - Introductions (4 minutes)
  - Project overview and goals (5 minutes)
  - Data and analysis (10 minutes)
  - Recommendations (3 minutes)
  - Actionable steps (3 minutes)
  - Questions (5 minutes)
- Second slide: Purpose
  - This slide summarizes the purpose of the project and why it is important to the business for your audience.
- Third slide: Data/analysis
- Fourth slide: Recommendations
  - Be ready to communicate how your data backs up your conclusion or recommendations in different ways.
- Fifth slide: Call to action

### 9.3 Presentation evaluation checklist
A well-crafted presentation bridges the gap between complex data and actionable insights. 
- Do I use an attention-grabbing opening?
- Do I start with broad ideas and later talk about specific details?
- Do I speak in short sentences?
- Do I pause for five seconds after showing a data visualization?
- Do I pause intentionally at certain points?
- Do I keep the pitch of my sentences level?
- Do I stand still and move with purpose?
- Do I have good posture?
- Do I look at my audience (or camera) while speaking?
- Do I keep my message concise?
- Do I end by explaining to my audience why the data analysis matters?
- Do I include a good title and subtitle that describes what I’m about to present?
- Do I include the date of my presentation or the date when my slideshow was last updated?
- Does my font size let the audience easily read my slides?
- Do I showcase what business metrics I used?
- Do I include effective visuals (like charts and graphs)?

## 10 Case study
| |Category|Case|
|---|---|---|
|1|Correlation and Causation|Correlation and Causation|
