# Biased Data

## From a quantitative analyst who collects data from people all over the world

“I work on a team that collects survey-like data for a start-up software company. One of our team’s tasks is called a comparative analysis. A comparative analysis is a side-by-side comparison that identifies the similarities and contrasts between two or more items. An example of this might be a clothing manufacturer wanting to compare the features of two or more uniform designs to determine their impact on sales and identify areas for improvement. The analysis aims to provide detailed insights into each feature and leverage historical data for meaningful comparisons. 

For our software company, our comparative analysis was showing a group of users with three ads side-by-side for the same mobile app design. After viewing the ads, we had the users complete a survey to determine their preferences. We asked several questions about the ads including recalling the key messages, organization of navigational elements, aesthetics, any prompts to take action with the mobile app, relevance to social media, etc.  In this specific case, after many iterations, we were seeing consistent bias in favor of the ad viewed first, even when switching the placement of the ads. 

We decided to add randomization to the position of the ads using R. We wanted to make sure that the ads with similar frequencies were near each other and to eliminate as much bias as possible. We used sample() to inject a randomization element into our R programming. In R, the sample() function allows you to take a random sample of elements from a data set. Adding this piece of code randomly shuffled the rows in our data. We presented the ads to users again, and this time, the position of the ads was random and controlled for bias. Less bias meant that the survey was more effective because the data was more reliable.”

## The data analysis process focusing on furniture sales
A significant issue arose when the dataset contained biased information related to the geographic representation of sales data. Certain regions were overrepresented, leading to skewed conclusions about popular furniture items. To address this bias, the furniture team employed statistical techniques to rebalance the dataset, oversampling underrepresented regions, and undersampling the overrepresented ones with R programming. The team employed the SMOTE (Synthetic Minority Oversampling Technique) for oversampling underrepresented regions and the NearMiss algorithm for undersampling overrepresented regions. Bootstrapping and k-nearest neighbor are used by the SMOTE function to generate further observations of the bias through oversampling. 


