# 1. FIFA 21

## Mission 

The FIFA 21 analysis project employs Python, pandas for data manipulation, and Plotly for advanced visualization, meticulously dissecting player statistics to uncover strategic insights, revealing pivotal trends in attributes, demographics, and values in the virtual football realm.

## Cleaning and Organising Data Set

The FIFA 21 dataset contains a wide range of information about players including their names, nationalities, positions, team affiliations, and various skill ratings. To prepare this dataset for analysis we should consider the following steps:

1. **Remove Unnecessary Columns**: Some columns may not be relevant for analysis. For example, `photoUrl` and `playerUrl` might not be needed.

2. **Clean Data**: Address any missing or inconsistent data. For instance, the `Hits` column appears to have newline characters.

3. **Normalize Text Data**: Ensure consistency in text data like team names, positions, and nationalities.

4. **Convert Data Types**: Some columns might be better represented in different data types. For example, ratings should be numeric.

5. **Extract Useful Information**: Some columns contain multiple pieces of information. For instance, `Team & Contract` could be split into separate columns for team and contract duration.

6. **Handle Columns with Mixed Types**: As indicated by the warning, at least one column has mixed data types which should be addressed.


## Potential Areas for Insight

To draw insights from the cleaned and organized FIFA 21 dataset, we can explore various aspects of the data. Some potential areas of analysis include:

- **Player Demographics**: Analyzing the distribution of players' ages, nationalities, and teams. This can reveal which countries or clubs are most represented in the game.

- **Skill Ratings**: Examining the distribution of overall ratings (`↓OVA`), potential ratings (`POT`), and specific skill attributes like pace (`PAC`), shooting (`SHO`), etc. Insights could include identifying the top-rated players, positions with the highest skill ratings, or trends in player abilities.

- **Physical Attributes**: Analyzing height and weight distributions to understand the physical makeup of top players. This can also be broken down by position or skill level.

- **Value and Wages**: Investigating the relationship between a player's value (e.g., release clause), wage, and their skill ratings. This can highlight the economics of the game and the correlation between a player's cost and their abilities.

- **Position Analysis**: Understanding the distribution of players across different positions and analyzing the skill set required for each position.

- **Player Development and Aging**: Studying how players' ratings change with age to understand at what age players peak and start to decline.

- **Comparison by Leagues and Teams**: Comparing different leagues and teams in terms of their players' average ratings, potential, and physical attributes.

  
## Results and Findings:

### 1. Age Distribution of Players:
<img width="494" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/71e4f6d4-defb-44ed-90c6-e8667c4808e4">

- The age distribution shows a bell curve common in professional sports with most players in their early to mid-twenties.
- There's a noticeable decline in the number of players as age increases indicating fewer older players in the game.

### 2. Distribution of Overall Rating
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/b22bcbe4-5fda-476b-815e-800e30ca1054">

- The overall ratings are skewed towards the lower end, indicating that highly rated players (90+) are rare.
- The majority of players have ratings between 60 and 70, highlighting the competitive nature of professional football where only a few excel to the top.

### 3. Height Distribution
<img width="483" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/931c94cd-1fe1-4194-8619-67ffe1c8f7cb">

- Player heights mostly range between 170 cm and 190 cm.
- This distribution reflects typical heights for professional football players, with few players being extremely tall or short.

### 4. Weight Distribution
<img width="483" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/7cb6d16a-7edd-435f-a151-f2e00d4fac6f">

- Weight distribution shows a normal distribution, with most players weighing between 70 kg and 80 kg.
- This distribution aligns with the physical demands of the sport, where a balance of strength and agility is crucial.
  
These insights provide a basic understanding of the demographics, physical attributes, and skill levels of players in FIFA 21. Let us next explore a more in-depth analysis of the data set and the insights it provides us with!!

### 5. Value vs Wage
<img width="468" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/217e3cf1-3f39-4fd6-bec7-1ec8a0926ad9">

The scatter plot illustrates the relationship between a player's overall rating, their release clause, and their wage in FIFA 21. Here are some key insights:
- **Overall Rating and Economic Value**: There's a clear positive correlation between a player's overall rating and their economic value (both release clause and wage). Players with higher overall ratings tend to have higher release clauses and wages.
- **Release Clause**: The release clause increases significantly for top-rated players, reflecting their high market value. The steep rise for players with ratings above 85 highlights the premium placed on elite talent.
- **Wage**: The color and size of the points indicate the players' wages. Players with higher wages are generally those with higher overall ratings, but there's a wider spread in wages than in release clauses. This suggests that wages might be influenced by additional factors like player popularity, club budget, or marketability.
- **High-Rating, High-Value Players**: The top right corner of the plot, where both the overall rating and release clause are high, is sparsely populated. This area represents the elite players in the game, who command both high wages and high release clauses due to their exceptional abilities.
- **Logarithmic Scale**: The use of a logarithmic scale for the release clause highlights the exponential increase in a player's value with higher skill levels, emphasizing how elite players are valued disproportionately higher than their peers.

### 6. Position-specific Analysis 
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/2449c5bd-1ae0-4525-8d5a-c97432e4aafd">

- Typically, attacking positions (like strikers and wingers) may have higher average ratings, reflecting the premium on goal-scoring abilities in football.
- Defensive positions might have lower average ratings but could excel in specific attributes like physicality or defense.

### 7. Age vs Performance 
<img width="483" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/19dd8f6b-6bf2-4e9a-9d00-abc82aedc072">

- Players generally peak between the ages of 27 and 32, with a gradual decline afterward.
- Young players (under 21) often have high potential ratings, indicating their future growth in the game.

### 8. Correlation Matrix
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/16f6af5f-c2e3-4dcc-8c42-620042cee896">

- There’s likely a strong correlation between a player's overall rating and their individual attributes like pace, shooting, and passing.
- Age might be negatively correlated with potential, as younger players generally have higher potential ratings.

### 9. Player Performance by Age and Position
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/e809f81d-99a2-4135-9229-498fdbc54a62">

- This analysis investigates how average player ratings vary across different ages for various primary positions. By plotting these trends, we can identify if certain positions (like strikers or defenders) peak at different ages, which helps in understanding the career trajectories specific to each role. For instance, it might reveal that attacking players peak earlier in their careers, while goalkeepers or defenders maintain their performance levels for a longer period.

### 10. Player Value vs Economic Attribute

<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/23f5be2d-8e43-4426-becd-bc13f0044caa">

<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/42867dd8-88e2-4853-a7e9-0312933cf26c">

In this analysis, the relationship between a player's economic value (measured by release clause and wage) and key playing attributes (like pace, shooting, passing) is explored. This can illustrate which attributes are most valued in the market. For example, it might show a strong correlation between shooting ability and economic value, indicating that players with high shooting skills command higher market prices and wages. This insight is valuable for understanding what attributes drive a player's market value in the virtual economy of FIFA 21


## Conclusion 

In this project, we conducted a comprehensive analysis of the FIFA 21 dataset using Python and its libraries like pandas, matplotlib, and seaborn. We focused on extracting meaningful insights about the players' demographics, skills, and economic values within the game. Our analysis included cleaning and organizing the raw data, followed by various explorations such as understanding player performance across different ages and positions, and examining the correlation between players' economic values and their on-field attributes. These analyses provided a deeper understanding of the trends and dynamics in the virtual football world of FIFA 21, revealing how player characteristics like age, position, and skill attributes influence their market value and performance within the game. This project not only showcased the power of data analysis in sports analytics but also offered valuable insights into the factors that contribute to a player's success and their economic value in FIFA 21.

[View Python Code](https://github.com/Anish935/Anish_Portfolio/blob/main/fifa21%20codes.py)



# 2. NBA DRAFT ANALYSIS

## Mission

Our aim is to harness the analytical prowess of Python's data science libraries—Pandas for data manipulation, Seaborn for advanced visualizations, and Scikit-learn for machine learning clustering—to decode the complexities of NBA draft success and illuminate the patterns that underpin basketball excellence.

## Cleaning and Organising Data Set

The dataset contains information about NBA players drafted in various years. 

1. **Handling Missing Values**: Filled with median values or categorized as 'Unknown' for colleges.

2. **Verification of Data Types**: Ensured correct data types for analysis readiness.

3. **Data Integrity**: Confirmed the consistency and accuracy of the dataset.


## Potential Areas for Insight

**Trend Analysis**: 
- **Draft Year Trends**: Analyzing the number of players drafted over the years to identify any trends or patterns.
- **Performance Over Time**: How players' performance metrics like points per game, assists, and rebounds have evolved over the years.

**Player Performance Analysis**: 
- **Correlation Matrix**: Examining the relationships between various performance metrics such as points per game, win shares, and value over replacement.Analyzing height and weight distributions to understand the physical makeup of top players. This can also be broken down by position or skill level.
- **Top Performers**: Identifying top players based on key metrics like points per game, win shares, etc.

**Team Analysis**: 
- **Teams' Draft Picks**: Visualization of the number of players drafted by each team.
- **Team Performance Metrics**: Analysis of how team choices in drafts correlate with player performance metrics.

**Advanced Statistical Analysis**: 
- **Elbow Method**: Within-Cluster Sum of Squares (WCSS) to identify how many clusters can be created 
- **Cluster Analysis**: Grouping players into clusters based on performance metrics to identify different types of players.

**Draft Analysis**:
- **Success Rate of Draft Pick**s: Analyzing how successful each draft pick is in terms of career longevity and performance.
- **Comparison of Early vs. Late Draft Picks**: Evaluating whether early draft picks perform significantly better than later ones.

  
## Results and Findings:

### 1. Trend Analysis:

**(i) Number of Players Drafted per Year**: 

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/d2c6ff22-31d7-46da-8e88-7428b956aad9">

This chart shows the count of players drafted each year. It appears that the number of players drafted has remained relatively consistent over the years, with slight variations. This consistency might be due to the fixed number of picks in each NBA draft.

**(ii) Average Points Per Game Over the Years**: 

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0e6fbefe-a53d-46de-92ae-0a81b7599155">

The line chart displays the average points scored per game by players from each draft year. There seems to be some fluctuation in the scoring average over time. This could be influenced by various factors like changes in playing styles, the evolving skill sets of players, or the defensive strategies of different eras.


### 2. Player Performance Analysis

**(i) Correlation Matrix**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/61bc932a-f2ac-4199-b855-cc67bdbbce8f">

The heatmap shows the correlation between various performance metrics. High positive correlations are evident between certain metrics, indicating that players who excel in one area often perform well in others. For instance, points per game (PPG) is positively correlated with win shares and value over replacement, suggesting that high scorers generally contribute significantly to their teams' success.

**(ii) Top Performers**

**a) Top Scorers (Points Per Game)**:

<img width="335" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1cb4d495-f1a3-4198-baf3-0ca49d80b472">

- Kevin Durant leads with an average of 27.2 points per game.
- LeBron James and Allen Iverson follow closely.
- This list includes renowned players known for their scoring abilities.

**b) Top Players Based on Win Shares**:

<img width="322" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/3f412882-0f3c-4fd5-9f12-cfec38d21b7c">

- LeBron James tops the list with 249.5 win shares, highlighting his immense contribution to team success.
- Tim Duncan and Dirk Nowitzki also feature prominently, reflecting their impact during their careers.
- This metric combines offensive and defensive contributions, showcasing all-around players.


### 3. Team Analysis 

**(i) Teams' Draft Picks**

**Number of Players Drafted by Each Team**:

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/805b377a-0430-47ba-9cbb-8b694e4dea68">

This bar chart illustrates the total number of players each NBA team has drafted. Some teams have drafted more players than others, which could be due to various factors like team strategies, performance in seasons (affecting draft order), and trades.

**(ii) Team Performance Metrics**

**Average Points Per Game by Team**:

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0fa9c920-575a-4539-ada0-058217738643">

Teams like NOH (New Orleans Hornets), VAN (Vancouver Grizzlies), and CLE (Cleveland Cavaliers) lead in this metric. This indicates that these teams, historically, have selected players who tend to score more on average.


### 4. Advanced Statistical Analysis

**(i) Elbow Method**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/2ce3569f-c2d3-4f51-8ba6-05b638275222">

In the provided graph, the elbow appears to be at around 4 clusters. This suggests that increasing the number of clusters beyond 4 does not yield a significant decrease in WCSS. Therefore, 4 is likely a good choice for the number of clusters to use for this dataset, as it represents a point where we have a reasonable trade-off between the number of clusters and the within-cluster variance. 

**(ii) Cluster Analysis**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/88b70408-1caf-456c-bfd3-694dfdc73571">

The dataset was grouped into four clusters, representing different types of players based on their performance metrics. Here's a summary of each cluster:

**Cluster 0**:
- Points Per Game: 4.60
- Average Total Rebounds: 2.16
- Average Assists: 0.91
- Win Shares: 3.82
- This cluster likely represents role players or bench players who contribute modestly in various aspects of the game.

**Cluster 1**:
- Points Per Game: 9.44
- Average Total Rebounds: 5.33
- Average Assists: 1.28
- Win Shares: 27.14
- Players in this cluster could be considered as solid starters or key rotation players, contributing significantly, especially in scoring and rebounding.

**Cluster 2**:
- Points Per Game: 17.22
- Average Total Rebounds: 7.13
- Average Assists: 3.41
- Win Shares: 96.64
- This cluster represents star players who excel in scoring, rebounding, and assists, and have a high impact on their team’s success.

**Cluster 3**:
- Points Per Game: 12.71
- Average Total Rebounds: 3.31
- Average Assists: 4.02
- Win Shares: 30.40
- Players in this cluster are likely versatile guards or forwards, contributing significantly in assists and scoring.


### 5. Draft Analysis

**(i) Average Win Shares by Draft Rank**:

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1ec952b8-3a58-4062-8549-1f8c740d9f7a">

The line chart illustrates the average win shares across different draft ranks. There's a clear trend showing that players with lower draft ranks (meaning they were picked earlier) tend to have higher average win shares. This suggests that earlier draft picks, on average, are more successful in contributing to their team's success.

**(ii) Comparison of Early vs. Late Draft Picks**:

<img width="376" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9f0b23c5-e884-4dfe-bc6d-f9380acf727b">

**a) Early Picks (Ranks 1-15)**: The average win shares for early draft picks is approximately 34.14. This indicates that players chosen in the top 15 contribute significantly to their teams, which aligns with expectations as these players are often highly touted prospects.

**b) Late Picks (Ranks 46-60)**: The average win shares for late draft picks is about 5.62, considerably lower than that for early picks. This reflects the common understanding that later draft picks are less likely to make a substantial impact, although there are always exceptions.

The graphical representation and the calculated averages corroborate the general consensus in the NBA Draft that earlier selections are expected to perform better than later ones. It's important to note that there are many outliers and individual success stories that defy these averages, but the overall trend aligns with these findings.


## Conclusion 

In this data analysis project, we meticulously cleaned and explored an NBA draft dataset, uncovering insights into draft trends, player performance, and team strategies. We identified consistent drafting patterns, established correlations between performance metrics, and discerned the average output of players per team. Utilizing advanced statistical techniques, we clustered players into categories that suggested typical roles and analyzed draft success, confirming that early draft picks generally have more successful careers based on win shares. The project highlighted data analysis's utility in sports analytics, providing a foundation for further investigative studies and potential improvements in player evaluation and team decision-making processes.

[View Python Code](https://github.com/Anish935/Project_Portfolio/blob/main/nba%20codes.ipynb)




# 3. Waze Project

## Mission

**The task is to develop a machine learning model to predict user churn. An accurate model will help prevent churn, improve user retention, and grow Waze’s business.**

Waze’s free navigation app makes it easier for drivers around the world to get to where they want to go. Waze’s community of map editors, beta testers, translators, partners, and users helps make each drive better and safer. 

Throughout this project, we'll see references to the problem-solving framework PACE. The following notebook components are labeled with the respective PACE stage: Plan, Analyze, Construct, and Execute. The PACE Stages will be repeated 4 times to train the model and enable it to achieve the best result. The PACE strategy will better equip us to complete the project in a systematic manner keeping a record of the work.

## PACE 1

Build a dataframe for the churn data. After the dataframe is complete, organize the data for the process of exploratory data analysis, and update the progress and insights. Use tools to create visuals for an executive summary to help non-technical stakeholders engage and interact with the data.

### PLAN: 

**1.** For EDA of the data, import the data and packages that will be most helpful, such as pandas, numpy, and matplotlib.

**2.** Read in the data and store it as a dataframe object called df.

### ANALYZE:

**1.** Since we are interested in user churn, the `label` column is essential. Besides `label`, variables that tie to user behaviors will be the most applicable. All variables tie to user behavior except `ID`.

**2.** `ID` can be dropped from the analysis since we are not interested in identifying a particular user. `ID` does not provide meaningful information about the churn (unless `ID` is assigned based on user sign-up time).

**3.** To check for missing data, we can use `df.info()` and inspect the `Non-Null Count` column. The difference between the number of non-nulls and the number of rows in the data is the number of missing values for the variable.

**4.** If the missing data are missing completely at random (MCAR), meaning that the reason for missingness is independent of the data values themselves, we can proceed with a complete-case analysis by removing the rows with missing values. Otherwise, we need to investigate the root cause of the missingness and make sure it won't interfere with the statistical inference and modeling.

**5.** Generate summary statistics using the `describe()` method.

**6.** And summary information using the `info()` method.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/f0dbf197-3f1e-4720-ae9e-3f3f41fd520f">

### CONSTRUCT: 

Now that we know which data columns to use, it is time to decide which data visualization makes the most sense for EDA of the Waze dataset.

**1. sessions: The number of occurrences of a user opening the app during the month**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/edb0b98c-ba7d-4a92-b02a-92cd4f5af5fc">

The `sessions` variable is a right-skewed distribution with half of the observations having 56 or fewer sessions. However, as indicated by the boxplot, some users have more than 700.

**2. drives: An occurrence of driving at least 1 km during the month**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/13b325ea-bc4b-44f9-8c1f-b6db08b5d902">

The `drives` information follows a distribution similar to the `sessions` variable. It is right-skewed, approximately log-normal, with a median of 48. However, some drivers had over 400 drives in the last month.

**3. total sessions: A model estimate of the total number of sessions since a user has onboarded**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/f41a0d6b-dc68-4bb0-a369-c35a122fe14f">

The `total_sessions` is a right-skewed distribution. The median total number of sessions is 159.6. This is interesting information because, if the median number of sessions in the last month was 56 and the median total sessions was ~160, then it seems that a large proportion of a user's (estimated) total drives might have taken place in the last month. This is something that can be examined more closely later.

**4. n_days_after_onboarding: The number of days since a user signed up for the app**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/de96b3a2-6607-4649-beee-d4e95ea453ae">

The total user tenure (i.e., number of days since onboarding) is a uniform distribution with values ranging from near-zero to \~3,500 (\~9.5 years).

**5. driven_km_drives: Total kilometers driven during the month**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/605652ea-6478-4639-b7d7-7476b2aca6e0">

The number of drives driven in the last month per user is a right-skewed distribution with half the users driving under 3,495 kilometers. The users in this dataset drive _a lot_. The longest distance driven in the month was over half the circumferene of the earth.

**6. duration_minutes_drives: Total duration driven in minutes during the month**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9198db36-b879-4300-9c71-16167d0a15ef">

The `duration_minutes_drives` variable has a heavily skewed right tail. Half of the users drove less than \~1,478 minutes (\~25 hours), but some users clocked over 250 hours over the month.

**7. activity_days: Number of days the users opens the app during the month**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/47b94361-eb13-4063-86a2-c2917db6fa50">

Within the last month, users opened the app a median of 16 times. The box plot reveals a centered distribution. The histogram shows a nearly uniform distribution of ~500 people opening the app on each count of days. However, there are ~250 people who didn't open the app at all and ~250 people who opened the app every day of the month. This distribution is noteworthy because it does not mirror the `sessions` distribution, which we might think would be closely correlated with `activity_days`.

**8. driving_days: Number of days the user drives (at least 1 km) during the month**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/e83f9386-3bc1-4a8d-9956-81da787597d3">

The number of days users drove each month is almost uniform, and it largely correlates with the number of days they opened the app that month, except the `driving_days` distribution tails off on the right.
However, there were almost twice as many users (\~1,000 vs. \~550) who did not drive at all during the month. This might seem counterintuitive when considered together with the information from `activity_days`. That variable had \~500 users opening the app on each of most of the day counts, but there were only \~250 users who did not open the app at all during the month and ~250 users who opened the app every day. Let us flag this for further investigation later.

**9. device: The type of device a user starts a session with**

<img width="318" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/bc922af1-1154-4e95-ab2f-1e896e70e106">

There are nearly twice as many iPhone users as Android users represented in this data.

**10. label: Binary target variable (“retained” vs “churned”) for if a user has churned anytime during the course of the month**

<img width="424" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9150748b-d588-469d-a39f-d6cd952c91b4">

Less than 18% of the users churned.

**11. driving_days vs activity_days:**

Because both `driving_days` and `activity_days` represent counts of days over a month and they're also closely related, we can plot them together on a single histogram. This will help to better understand how they relate to each other without having to scroll back and forth comparing histograms in two different places

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/fd839150-e9f3-4e94-92ba-c903baf4cf0c">

As observed previously, this might seem counterintuitive. After all, why are there _fewer_ people who didn't use the app at all during the month and _more_ people who didn't drive at all during the month?

On the other hand, it could just be illustrative of the fact that, while these variables are related to each other, they're not the same. People probably just open the app more than they use the app to drive&mdash;perhaps to check drive times or route information, to update settings, or even just by mistake.

Confirm the maximum number of days for each variable&mdash;`driving_days` and `activity_days` to obtain 30 & 31 respectively. It's true. Although it's possible that not a single user drove all 31 days of the month, it's highly unlikely, considering there are 15,000 people represented in the dataset.
One other way to check the validity of these variables is to plot a simple scatter plot with the x-axis representing one variable and the y-axis representing the other.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/b002e91e-6795-4a2a-9bec-13325253afe9">

Notice that there is a theoretical limit. If you use the app to drive, then by definition it must count as a day-use as well. In other words, you cannot have more drive-days than activity-days. None of the samples in this data violate this rule, which is good for the next stages.

**12. Retention by Device:**

Plot a histogram that has four bars&mdash;one for each device-label combination&mdash;to show how many iPhone users were retained/churned and how many Android users were retained/churned.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/e5a36137-e0a8-43e3-a0eb-d5c6a6d8459d">

The proportion of churned users to retained users is consistent between device types.

**13. Churn rate per number of driving days:**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/922c6c3d-0b8b-4003-8707-049a66123976">

The churn rate is highest for people who didn't use Waze much during the last month. The more times they used the app, the less likely they were to churn. While 40% of the users who didn't use the app at all last month churned, nobody who used the app 30 days churned.
This isn't surprising. If people who used the app a lot churned, it would likely indicate dissatisfaction. When people who don't use the app churn, it might be the result of dissatisfaction in the past, or it might be indicative of a lesser need for a navigational app. Maybe they moved to a city with good public transportation and don't need to drive anymore.

### EXECUTE:

**1.** Nearly all the variables were either very right-skewed or uniformly distributed. For the right-skewed distributions, this means that most users had values in the lower end of the range for that variable. For the uniform distributions, this means that users were generally equally likely to have values anywhere within the range for that variable.

**2.** Most of the data was not problematic, and there was no indication that any single variable was completely wrong. However, several variables had highly improbable or perhaps even impossible outlying values, such as `driven_km_drives`. Some of the monthly variables also might be problematic, such as `activity_days` and `driving_days`, because one has a max value of 31 while the other has a max value of 30, indicating that data collection might not have occurred in the same month for both of these variables.

**3.** Less than 18% of users churned, and \~82% were retained.

**4.** Distance driven per driving day had a positive correlation with user churn. The farther a user drove on each driving day, the more likely they were to churn. On the other hand, number of driving days had a negative correlation with churn. Users who drove more days of the last month were less likely to churn.


## PACE 2: 

Conduct hypothesis testing on the data for the churn data. Investigate Waze's dataset to determine which hypothesis testing method best serves the data and the churn project.

### PLAN:

**1.** Research Question: Do drivers who open the application using an iPhone have the same number of drives on average as drivers who use Android devices?

**2.** Import packages and libraries needed to compute descriptive statistics and conduct a hypothesis test.
   
### ANALYZE & CONSTRUCT: 

**1.** Create a dictionary called `map_dictionary` that contains the class labels (`'Android'` and `'iPhone'`) for keys and the values you want to convert them to (`2` and `1`) as values.

**2.** Create a new column called `device_type` that is a copy of the `device` column.

**3.** Use the [`map()`](https://pandas.pydata.org/docs/reference/api/pandas.Series.map.html#pandas-series-map) method on the `device_type` series. Pass `map_dictionary` as its argument. Reassign the result back to the `device_type` series.
</br></br>

When we pass a dictionary to the `Series.map()` method, it will replace the data in the series where that data matches the dictionary's keys. The values that get imputed are the values of the dictionary.

```
Example:
df['column']
```

|column |
|  :-:       |
| A     |
| B     |
| A     |
| B     |

```
map_dictionary = {'A': 2, 'B': 1}
df['column'] = df['column'].map(map_dictionary)
df['column']
```

|column |
|  :-: |
| 2    |
| 1    |
| 2    |
| 1    |

Since we are interested in the relationship between device type and the number of drives. One approach is to look at the average number of drives for each device type. 

<img width="245" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/633515f8-94be-437f-aadd-c8c1a959a4a4">

Based on the averages shown, it appears that drivers who use an iPhone device to interact with the application have a higher number of drives on average. However, this difference might arise from random sampling, rather than being a true difference in the number of drives. To assess whether the difference is statistically significant, we can conduct a hypothesis test.

**Steps to Conduct a 2-Sample T-test:**

**1.**   State the null hypothesis and the alternative hypothesis

**2.**   Choose a signficance level

**3.**   Find the p-value

**4.**   Reject or fail to reject the null hypothesis

**Note:** This is a t-test for two independent samples. This is the appropriate test since the two groups are independent (Android users vs. iPhone users).

**Hypotheses:**

$H_0$: There is no difference in average number of drives between drivers who use iPhone devices and drivers who use Androids.

$H_A$: There is a difference in average number of drives between drivers who use iPhone devices and drivers who use Androids.

Next, let us choose 5% as the significance level and proceed with a two-sample t-test.

We can use the `stats.ttest_ind()` function to perform the test.

1. Isolate the `drives` column for iPhone users.

2. Isolate the `drives` column for Android users.

3. Perform the t-test

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0a17a3bd-5e80-450e-acc7-4449b736ff5e">

**Result:** Since the p-value is larger than the chosen significance level (5%), we fail to reject the null hypothesis. We can conclude that there is **not** a statistically significant difference in the average number of drives between drivers who use iPhones and drivers who use Androids.

### EXECUTE: 

One potential next step is to explore what other factors influence the variation in the number of drives, and run additonal hypothesis tests to learn more about user behavior. Further, temporary changes in marketing or user interface for the Waze app may provide more data to investigate churn.

## PACE 3

We will create a binomial logistic regression model for the churn project. We'll determine the type of regression model that is needed and develop one using Waze's churn project data.

### PLAN: 

**Import the following packages to build a regression model:**

*Packages for numerics + dataframes*

import pandas as pd

import numpy as np

*Packages for visualization*

import matplotlib.pyplot as plt

import seaborn as sns

*Packages for Logistic Regression & Confusion Matrix*

from sklearn.preprocessing import StandardScaler, OneHotEncoder

from sklearn.model_selection import train_test_split

from sklearn.metrics import classification_report, accuracy_score, precision_score,

recall_score, f1_score, confusion_matrix, ConfusionMatrixDisplay

from sklearn.linear_model import LogisticRegression

### ANALYZE:

**1. `km_per_driving_day`**

You know from earlier EDA that churn rate correlates with distance driven per driving day in the last month. It might be helpful to engineer a feature that captures this information.

1. Create a new column in `df` called `km_per_driving_day`, which represents the mean distance driven per driving day for each user.

2. Call the `describe()` method on the new column.

3. Note that some values are infinite. This is the result of there being values of zero in the `driving_days` column. Pandas imputes a value of infinity in the corresponding rows of the new column because division by zero is undefined.
   
a) Convert these values from infinity to zero. You can use `np.inf` to refer to a value of infinity.

b) Call `describe()` on the `km_per_driving_day` column to verify that it worked.

<img width="333" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/8467083e-414c-429f-a474-85ea1235c73f">

**2. `professional_driver`**

Create a new, binary feature called `professional_driver` that is a 1 for users who had 60 or more drives <u>**and**</u> drove on 15+ days in the last month.

**Note:** The objective is to create a new feature that separates professional drivers from other drivers. In this scenario, domain knowledge and intuition are used to determine these deciding thresholds, but ultimately they are arbitrary.

**3. Perform a quick inspection of the new variable:**

1. Check the count of professional drivers and non-professionals

2. Within each class (professional and non-professional) calculate the churn rate

<img width="335" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/64e05abe-a690-4560-9c13-365aacd893ef">

The churn rate for professional drivers is 7.6%, while the churn rate for non-professionals is 19.9%. This seems like it could add predictive signal to the model.

### CONSTRUCT:

**1. Encode Categorical Variable:**

Change the data type of the `label` column to be binary. This change is needed to train a logistic regression model.
Assign a `0` for all `retained` users.
Assign a `1` for all `churned` users.
Save this variable as `label2` as to not overwrite the original `label` variable.

<img width="201" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/fc729452-078a-4109-b58f-f95b34af40b1">

**2. Determine whether assumptions have been met:**

The following are the assumptions for logistic regression:

a) Independent observations (This refers to how the data was collected.)

b) No extreme outliers

c) Little to no multicollinearity among X predictors

d) Linear relationship between X and the **logit** of y

For the first assumption, we can assume that observations are independent for this project.
The second assumption has already been addressed.
The last assumptions will be verified after modeling.

**3. Collinearity:**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/d41178f3-6fd6-4bcc-8731-21eb05b02d83">

If there are predictor variables that have a Pearson correlation coefficient value greater than the **absolute value of 0.7**, these variables are strongly multicollinear. Therefore, only one of these variables should be used in our model.

If there are predictor variables that have a Pearson correlation coefficient value greater than the **absolute value of 0.7**, these variables are strongly multicollinear. Therefore, only one of these variables should be used in your model.

*Which variables are multicollinear with each other?*

**`sessions` and `drives`: 1.0**

**`driving_days` and `activity_days`: 0.95**

**4. Create dummies if neccessary:**

If we have selected `device` as an X variable, we will need to create dummy variables since this variable is categorical.
Create a new, binary column called `device2` that encodes user devices as follows:
* `Android` -> `0`

* `iPhone` -> `1`

<img width="219" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/b7d6d594-3385-4b32-b918-860af3c36cd9">

**5. Assign predictor variables and target**

To build the model we need to determine what X variables we want to include in the model to predict our target&mdash;`label2`.

Drop the following variables and assign the results to `X`:

a) `label` (this is the target)

b) `label2` (this is the target)

c) `device` (this is the non-binary-encoded categorical variable)

d) `sessions` (this had high multicollinearity)

e) `driving_days` (this had high multicollinearity)

**Note:** `sessions` and `driving_days` were selected to be dropped, rather than `drives` and `activity_days`. The reason for this is that the features that were kept for modeling had slightly stronger correlations with the target variable than the features that were dropped.

**6. Split the data**

**a)** It is important to do a train test to obtain accurate predictions.  We always want to fit your model on your training set and evaluate our model on our test set to avoid data leakage.

**b)** Because the target class is imbalanced (82% retained vs. 18% churned), we want to make sure that we don't get an unlucky split that over- or under-represents the frequency of the minority class. Set the function's `stratify` parameter to `y` to ensure that the minority class appears in both train and test sets in the same proportion that it does in the overall dataset.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/deab1aed-2175-4e94-962e-4103c1abc6ee">

**c)** Use scikit-learn to instantiate a logistic regression model. Add the argument `penalty = None`.

**d)** It is important to add `penalty = 'none'` since your predictors are unscaled.

**e)** Fit the model on `X_train` and `y_train`.

**f)** Call the `.coef_` attribute on the model to get the coefficients of each variable.  The coefficients are in order of how the variables are listed in the dataset.

<img width="296" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/5187726b-372e-4312-bfc4-9bc280f952bb">

**g)** Call the model's `intercept_` attribute to get the intercept of the model.

<img width="184" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/6d4495d4-880a-4212-a2cf-4e97a28139ea">

**7. Check final assumptions**

Verify the linear relationship between X and the estimated log odds (known as logits) by making a regplot.

Call the model's `predict_proba()` method to generate the probability of response for each sample in the training data. (The training data is the argument to the method.) Assign the result to a variable called `training_probabilities`. This results in a 2-D array where each row represents a user in `X_train`. The first column is the probability of the user not churning, and the second column is the probability of the user churning.

In logistic regression, the relationship between a predictor variable and the dependent variable does not need to be linear, however, the log-odds (a.k.a., logit) of the dependent variable with respect to the predictor variable should be linear. 

**a)** Create a dataframe called `logit_data` that is a copy of `df`.

**b)** Create a new column called `logit` in the `logit_data` dataframe. The data in this column should represent the logit for each user.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/8310ede6-a594-49bf-ae1e-85f4140a00d3">

### EXECUTE:

**1. Results and Evaluation**

**a)** If the logistic assumptions are met, the model results can be appropriately interpreted.
Use the code block below to make predictions on the test data.
y_preds = model.predict(X_test)

**b)** Now, use the `score()` method on the model with `X_test` and `y_test` as its two arguments. The default score in scikit-learn is **accuracy**.

<img width="166" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/b1442062-8b69-40fe-a095-ad58fbc27e6e">

**2. Show results with a confusion matrix**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/3ffe794a-b9fe-48ba-88c8-a8b3a3a55c8a">

**Classification Report:**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/816075ec-c78c-439a-85d3-fd8fe1029804">

The model has mediocre precision and very low recall, which means that it makes a lot of false negative predictions and fails to capture users who will churn.

**3. Importance of Model's Features**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/7baa8d9d-d278-4a95-984f-788791fc83be">

**4. Conclusions**

**a)** `activity_days` was by far the most important feature in the model. It had a negative correlation with user churn. This was not surprising, as this variable was very strongly correlated with `driving_days`, which was known from EDA to have a negative correlation with churn.

**b)** In previous EDA, user churn rate increased as the values in `km_per_driving_day` increased. The correlation heatmap here in this notebook revealed this variable to have the strongest positive correlation with churn of any of the predictor variables by a relatively large margin. In the model, it was the second-least-important variable.

**c)** New features could be engineered to try to generate better predictive signal, as they often do if we have domain knowledge. In the case of this model, one of the engineered features (`professional_driver`) was the third-most-predictive predictor. It could also be helpful to scale the predictor variables, and/or to reconstruct the model with different combinations of predictor variables to reduce noise from unpredictive features.

**d)** It would be helpful to have drive-level information for each user (such as drive times, geographic locations, etc.). It would probably also be helpful to have more granular data to know how users interact with the app. For example, how often do they report or confirm road hazard alerts? Finally, it could be helpful to know the monthly count of unique starting and ending locations each driver inputs.

## PACE 4

We will create the final machine learning model for the churn project using feature engineering, two tree-based models: random forest, and XGBoost. The project will be completed through model development and evaluation 

### PLAN: 

**1. Ethical Considerations**

**a)**   What are you being asked to do?
> _Predict if a customer will churn or be retained._

**b)**   What are the ethical implications of the model? What are the consequences of your model making errors? i.e What is the likely effect of the model when it predicts a false negative (i.e., when the model says a Waze user won't churn, but they actually will)?

> _Waze will fail to take proactive measures to retain users who are likely to stop using the app. For example, Waze might proactively push an app notification to users, or send a survey to better understand user dissatisfaction._

**c)** What is the likely effect of the model when it predicts a false positive (i.e., when the model says a Waze user will churn, but they actually won't)?
> _Waze may take proactive measures to retain users who are NOT likely to churn. This may lead to an annoying or negative experience for loyal users of the app._

**d)**   Do the benefits of such a model outweigh the potential problems?
> _The proactive measueres taken by Waze might have unintended effects on users, and these effects might encourage user churn. Follow-up analysis on the effectiveness of the measures is recommended. If the measures are reasonable and effective, then the benefits will most likely outweigh the problems._


**2. Import packages and libraries needed to build and evaluate random forest and XGBoost classification models**

**3. Now read in the dataset as `df0` and inspect the first five rows**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/dc6079af-976e-42e2-acc8-9556a17562f3">

### ANALYZE: 

**1. Feature Engineering**

To begin, create a copy of `df0` to preserve the original dataframe. Call the copy `df`.

**a)** **`km_per_driving_day`**

(i) Create a feature representing the mean number of kilometers driven on each driving day in the last month for each user. Add this feature as a column to `df`.

(ii) Get descriptive statistics for this new feature

(iii) Convert these values from infinity to zero. You can use `np.inf` to refer to a value of infinity.

(iv) Call `describe()` on the `km_per_driving_day` column to verify that it worked.

<img width="336" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/7eb78fdd-0086-4130-ab90-d87ebd8163f4">

**b)** **`percent_sessions_in_last_month`**

Create a new column `percent_sessions_in_last_month` that represents the percentage of each user's total sessions that were logged in their last month of use.

**c)** **`professional_driver`**

Create a new, binary feature called `professional_driver` that is a 1 for users who had 60 or more drives <u>**and**</u> drove on 15+ days in the last month.

**Note:** The objective is to create a new feature that separates professional drivers from other drivers. In this scenario, domain knowledge and intuition are used to determine these deciding thresholds, but ultimately they are arbitrary.

**d)** **`total_sessions_per_day`**

Now, create a new column that represents the mean number of sessions per day _since onboarding_.

**e)** **`km_per_hour`**

Create a column representing the mean kilometers per hour driven in the last month.

**f)** **`km_per_drive`**

Create a column representing the mean number of kilometers per drive made in the last month for each user. 

**g)** **`percent_of_sessions_to_favorite`**

Finally, create a new column that represents the percentage of total sessions that were used to navigate to one of the users' favorite places. 

This is a proxy representation for the percent of overall drives that are to a favorite place. Since total drives since onboarding are not contained in this dataset, total sessions must serve as a reasonable approximation.

People whose drives to non-favorite places make up a higher percentage of their total drives might be less likely to churn, since they're making more drives to less familiar places.

**2. Drop missing values**

Because we know from previous EDA that there is no evidence of a non-random cause of the 700 missing values in the `label` column, and because these observations comprise less than 5% of the data, use the `dropna()` method to drop the rows that are missing this data.

**3. Outliers**

We know from previous EDA that many of these columns have outliers. However, tree-based models are resilient to outliers, so there is no need to make any imputations.

**4. Variable Encoding**

**a) Dummying features** 

Because this dataset only has one remaining categorical feature (`device`), it's not necessary to use one of these special functions. we can just implement the transformation directly.

Create a new, binary column called `device2` that encodes user devices as follows:

* `Android` -> `0`
* `iPhone` -> `1`

**b) Target Encoding**

The target variable is also categorical, since a user is labeled as either "churned" or "retained." Change the data type of the `label` column to be binary. This change is needed to train the models.

Assign a `0` for all `retained` users.

Assign a `1` for all `churned` users.

Save this variable as `label2` so as not to overwrite the original `label` variable.

**5. Feature Selection**

Tree-based models can handle multicollinearity, so the only feature that can be cut is `ID`, since it doesn't contain any information relevant to churn.

Note, however, that `device` won't be used simply because it's a copy of `device2`.

Drop `ID` from the `df` dataframe.

**6. Evaluation Metric**

Before modeling, we must decide on an evaluation metric. This will depend on the class balance of the target variable and the use case of the model.

First, examine the class balance of the target variable.

<img width="298" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/ee412c18-f60c-438d-a9d2-3df9e32a57bc">

Approximately 18% of the users in this dataset churned. This is an unbalanced dataset, but not extremely so. It can be modeled without any class rebalancing.

Now, consider which evaluation metric is best. Remember, accuracy might not be the best gauge of performance because a model can have high accuracy on an imbalanced dataset and still fail to predict the minority class.

It was already determined that the risks involved in making a false positive prediction are minimal. No one stands to get hurt, lose money, or suffer any other significant consequence if they are predicted to churn. Therefore, let us select the model based on the recall score.

### CONSTRUCT:

**1. Modeling workflow and model selection process**

The final modeling dataset contains 14,299 samples. This is towards the lower end of what might be considered sufficient to conduct a robust model selection process, but still doable.

**a)** Split the data into train/validation/test sets (60/20/20)

Note that, when deciding the split ratio and whether or not to use a validation set to select a champion model, consider both how many samples will be in each data partition, and how many examples of the minority class each would therefore contain. In this case, a 60/20/20 split would result in \~2,860 samples in the validation set and the same number in the test set, of which \~18%&mdash;or 515 samples&mdash;would represent users who churn.

**b)** Fit models and tune hyperparameters on the training set

**c)** Perform final model selection on the validation set

**d)** Assess the champion model's performance on the test set

![](https://raw.githubusercontent.com/adacert/tiktok/main/optimal_model_flow_numbered.svg)

**2. Split the data**

Now you're ready to model. The only remaining step is to split the data into features/target variable and training/validation/test sets.

**a)** Define a variable `X` that isolates the features. Remember not to use `device`.

**b)** Define a variable `y` that isolates the target variable (`label2`).

**c)** Split the data 80/20 into an interim training set and a test set. Don't forget to stratify the splits, and set the random state to 42.

**d)** Split the interim training set 75/25 into a training set and a validation set, yielding a final ratio of 60/20/20 for training/validation/test sets. Again, don't forget to stratify the splits and set the random state.

**3. Modelling**

**a) Random Forest**

Begin with using `GridSearchCV` to tune a random forest model.

**(i)** Instantiate the random forest classifier `rf` and set the random state.

**(ii)** Create a dictionary `cv_params` of any of the following hyperparameters and their corresponding values to tune. The more you tune, the better your model will fit the data, but the longer it will take.
 - `max_depth`
 - `max_features`
 - `max_samples`
 - `min_samples_leaf`
 - `min_samples_split`
 - `n_estimators`

**(iii)** Define a set `scoring` of scoring metrics for GridSearch to capture (precision, recall, F1 score, and accuracy).

**(iv)** Instantiate the `GridSearchCV` object `rf_cv`. Pass to it as arguments:
 - estimator=`rf`
 - param_grid=`cv_params`
 - scoring=`scoring`
 - cv: define the number of cross-validation folds you want (`cv=_`)
 - refit: indicate which evaluation metric you want to use to select the model (`refit=_`)

`refit` should be set to `'recall'`.<font/>

**(v)** Now let us fit the model to the training data

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1db8845d-a16d-4abb-845a-a1e6c39bbebc">

**(vi)** Examine the best average score across all the validation folds 

<img width="183" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/ae750aff-3161-4792-8923-83d6781a6a53">

**(vii)** Examine the best combination of hyperparameters 

<img width="209" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/a5f5bba2-b420-4289-988c-d19006c776c3">

**(viii)** Pass the `GridSearch` object to the `make_results()` function.

<img width="337" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/4a459b5d-7a47-495a-9bf2-d318c09f3879">

Aside from the accuracy, the scores aren't that good. However, recall that when we built the logistic regression model in the last PACE the recall was \~0.09, which means that this model has 33% better recall and about the same accuracy, and it was trained on less data.

**b) XGBoost**

Let us try to improve your scores using an XGBoost model.

**(i)** Instantiate the XGBoost classifier `xgb` and set `objective='binary:logistic'`. Also set the random state.

**(ii)** Create a dictionary `cv_params` of the following hyperparameters and their corresponding values to tune:
 - `max_depth`
 - `min_child_weight`
 - `learning_rate`
 - `n_estimators`

**(iii)** Define a set `scoring` of scoring metrics for grid search to capture (precision, recall, F1 score, and accuracy).

**(iv)** Instantiate the `GridSearchCV` object `xgb_cv`. Pass to it as arguments:
 - estimator=`xgb`
 - param_grid=`cv_params`
 - scoring=`scoring`
 - cv: define the number of cross-validation folds you want (`cv=_`)
 - refit: indicate which evaluation metric you want to use to select the model (`refit='recall'`)

**(v)** Now fit the model to the `X_train` and `y_train` data.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/d99aa6c5-e515-45c2-a514-479e063caf7a">

**(vi)** Get the best score from the model, the best parameters, and use the `make_results()` function to output all of the scores of the model. 

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/fc87327e-1396-47a3-9349-007a4c396c1f">

**This model fit the data even better than the random forest model. The recall score is nearly double the recall score from the logistic regression model from the previous PACE, and it's almost 50% better than the random forest model's recall score, while maintaining a similar accuracy and precision score**

**4. Model selection**

Now, let us use the best random forest model and the best XGBoost model to predict on the validation data. Whichever performs better will be selected as the champion model.

**a) Random Forest**

<img width="353" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/c5eb543d-0231-49dc-8537-0492ccd855e4">

Notice that the scores went down from the training scores across all metrics, but only by very little. This means that the model did not overfit the training data.

**b) XGBoost**

<img width="357" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/f7bea7d0-5ad8-4494-b758-33106c51e792">

Just like with the random forest model, the XGBoost model's validation scores were lower, but only very slightly. It is still the clear champion.

### EXECUTE:

**1. Use champion model to predict on test data**

Now, let us use the champion model to predict on the test dataset. This is to give a final indication of how we should expect the model to perform on new future data, should we decide to use the model.

<img width="348" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0db96645-8320-4040-b7f1-6967d3a06b6a">

The recall was exactly the same as it was on the validation data, but the precision declined notably, which caused all of the other scores to drop slightly. Nonetheless, this is stil within the acceptable range for performance discrepancy between validation and test scores.

**2. Confusion Matrix**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/a26e8c1c-10fd-4be9-a325-6c36b396aa09">

The model predicted three times as many false negatives than it did false positives, and it correctly identified only 16.6% of the users who actually churned.

**3. Feature Importance**

Use the `plot_importance` function to inspect the most important features of your final model.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/44e7c3b2-1f8c-4360-99ca-f0aa6c36c2e0">

The XGBoost model made more use of many of the features than did the logistic regression model from the previous course, which weighted a single feature (`activity_days`) very heavily in its final prediction.

**4. Identify an optimal decision threshold**

The default decision threshold for most implementations of classification algorithms&mdash;including scikit-learn's&mdash;is 0.5. This means that, in the case of the Waze models, if they predicted that a given user had a 50% probability or greater of churning, then that user was assigned a predicted value of `1`&mdash;the user was predicted to churn.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1423ab9c-0542-4e8a-b132-02c6e1f8c0cb">

As recall increases, precision decreases. But what if we determined that false positives aren't much of a problem? For example, in the case of this Waze project, a false positive could just mean that a user who will not actually churn gets an email and a banner notification on their phone. It's very low risk.

Instead of using the default 0.5 decision threshold of the model, let us use a lower threshold 0.4:

<img width="414" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0876f46e-b399-4b75-9c08-8a36904df104">

The `predict_proba()` method returns a 2-D array of probabilities where each row represents a user. The first number in the row is the probability of belonging to the negative class, the second number in the row is the probability of belonging to the positive class. 

We can generate new predictions based on this array of probabilities by changing the decision threshold for what is considered a positive response. For example, the we can use a different code to convert the predicted probabilities to {0, 1} predictions with a threshold of 0.4. In other words, any users who have a value ≥ 0.4 in the second column will get assigned a prediction of `1`, indicating that they churned.

<img width="416" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/4dfcb77a-f888-42b4-88fe-86465663d327">

Let us compare this with the results from earlier 

<img width="345" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/7e96b51d-f690-4eb0-adf3-59a8be3bd2fc">

Recall and F1 score increased significantly, while precision and accuracy decreased marginally.

So, using the precision-recall curve as a guide, suppose you knew that you'd be satisfied if the model had a recall score of 0.5 and you were willing to accept the \~30% precision score that comes with it. In other words, We will be happy if the model successfully identified half of the people who will actually churn, even if it means that when the model says someone will churn, it's only correct about 30% of the time.

**5. Conclusion**

**a)** Splitting the data three ways means that there is less data available to train the model than splitting just two ways. However, performing model selection on a separate validation set enables testing of the champion model by itself on the test set, which gives a better estimate of future performance than splitting the data two ways and selecting a champion model by performance on the test data.

**b)** Logistic regression models are easier to interpret. Because they assign coefficients to predictor variables, they reveal not only which features factored most heavily into their final predictions, but also the directionality of the weight. In other words, they tell you if each feature is positively or negatively correlated with the target in the model's final prediction.

**c)** Tree-based model ensembles are often better predictors. If the most important thing is the predictive power of the model, then tree-based modeling will usually win out against logistic regression. They also require much less data cleaning and require fewer assumptions about the underlying distributions of their predictor variables, so they're easier to work with.

**d)** New features could be engineered to try to generate better predictive signal, as they often do if you have domain knowledge. In the case of this model, the engineered features made up over half of the top 10 most-predictive features used by the model. It could also be helpful to reconstruct the model with different combinations of predictor variables to reduce noise from unpredictive features.

[View Python Code](https://github.com/Anish935/Project_Portfolio/blob/main/waze%20code.py)


# New York TLC Project

## Mission

**Predicting Taxi Gratuities in New York City**

The goal of this project is to create a multiple linear regression and random forest model to predict high rider gratuity or not. This project will utilize yellow taxi trips taken in New York City during 2017. We will start off by conducting EDA on the provided data set. We will then prepare, create, and analyze A/B tests. The A/B test results should aim to find ways to generate more revenue for taxi cab drivers. Next, we will build a multiple linear regression model as it allows us to consider more than one variable against the variable we're measuring against. This opens the door for much more thorough and flexible analysis to be completed. Finally, we will build a machine learning model to predict if a customer will not leave a tip. They want to use the model in an app that will alert taxi drivers to customers who are unlikely to tip, since drivers depend on tips. 

Throughout this project, we'll see references to the problem-solving framework PACE. The following notebook components are labeled with the respective PACE stage: Plan, Analyze, Construct, and Execute. The PACE Stages will be repeated 4 times to train the model and enable it to achieve the best result. The PACE strategy will better equip us to complete the project in a systematic manner keeping a record of the work.

## PACE 1

### PLAN:

For EDA of the data, import the data and packages that would be most helpful, such as pandas, numpy and matplotlib. Then, import the dataset.

### ANALYZE:

**1.** Decide which columns are applicable

**2.** Consider functions that help you understand and structure the data. 

*    `head()`
*    `describe()`
*    `info()`
*    `groupby()`
*    `sortby()`

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/2c63fff6-7193-42b5-88b2-0b7f1b31b480">

**3.** Use the size, describe, and info function to better understand the data and make sure there are no missing values 

<img width="440" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/440a43ef-af0a-4926-bfa4-403fb0341b0a">

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/5f9dc055-3207-47e5-9219-e40d8bdc9157">

<img width="73" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/a987da58-47df-4888-942d-902915f58d1a">

There is no missing data according to the results from the `info()` function. 

**4** Select data visualization types that will help you understand and explain the data.

* Line graph
* Bar chart
* Box plot
* Histogram
* Heat map
* Scatter plot
* A geographic map

### CONSTRUCT:

**1. Box Plots**

Perform a check for outliers on relevant columns such as trip distance and trip duration. Remember, some of the best ways to identify the presence of outliers in data are box plots and histograms. 

**a)** **trip_distance**

<img width="421" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/aaaa12a3-c41d-4030-bc2d-e079ef0461c5">

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/95e43aeb-c194-4a7f-b3ab-37e603aab7cf">

The majority of trips were journeys of less than two miles. The number of trips falls away steeply as the distance traveled increases beyond two miles.

**b)** **total_amount**

<img width="424" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/bc854bda-7f89-428c-b5e6-f92073f0be04">

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/94aef564-f3b1-4db3-aeda-bb4ce621ad81">

The total cost of each trip also has a distribution that skews right, with most costs falling in the $5-15 range.

**c)** **tip_amount**

<img width="423" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/7ed1cc1e-16b3-4839-9807-f86153bcd472">

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9b9c408d-d046-4124-9630-16bd964269c0">

The distribution for tip amount is right-skewed, with nearly all the tips in the $0-3 range.

**d)** **tip_amount by vendor**

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/38d72fdf-be4e-4fd6-9b2e-c3698a8786fa">

Separating the tip amount by vendor reveals that there are no noticeable aberrations in the distribution of tips between the two vendors in the dataset. Vendor two has a slightly higher share of the rides, and this proportion is approximately maintained for all tip amounts.

Next, zoom in on the upper end of the range of tips to check whether vendor one gets noticeably more of the most generous tips.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/b36b8872-a3e4-4a2f-9003-7723395750ea">

The proportions are maintained even at these higher tip amounts, with the exception being at highest extremity, but this is not noteworthy due to the low sample size at these tip amounts.

**e)** **Mean tips by passenger count**

Examine the unique values in the `passenger_count` column.

<img width="307" alt="Screenshot 2024-03-03 at 12 12 41 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/340edfac-3c42-40a6-8d82-a543a869547d">

Nearly two thirds of the rides were single occupancy, though there were still nearly 700 rides with as many as six passengers. Also, there are 33 rides with an occupancy count of zero, which doesn't make sense. These would likely be dropped unless a reasonable explanation can be found for them.

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9b7a2374-ef71-47b3-9d6a-0aa6c124d58e">

Mean tip amount varies very little by passenger count. Although it does drop noticeably for four-passenger rides, it's expected that there would be a higher degree of fluctuation because rides with four passengers were the least plentiful in the dataset (aside from rides with zero passengers).

**f) Create month and day columns**

<img width="755" alt="Screenshot 2024-03-03 at 12 16 08 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0b97a8f1-6f10-4640-98de-eef47d34f407">

Monthly rides are fairly consistent, with notable dips in the summer months of July, August, and September, and also in February.

<img width="750" alt="Screenshot 2024-03-03 at 12 16 46 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/4d4cfca4-04c4-40de-95db-6227505578a1">

Suprisingly, Wednesday through Saturday had the highest number of daily rides, while Sunday and Monday had the least.

<img width="757" alt="Screenshot 2024-03-03 at 12 17 26 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/2c748905-bcbf-48d2-9447-8df9fbba1820">

Thursday had the highest gross revenue of all days, and Sunday and Monday had the least. Interestingly, although Saturday had only 35 fewer rides than Thursday, its gross revenue was ~$6,000 less than Thursday's&mdash;more than a 10% drop.

<img width="757" alt="Screenshot 2024-03-03 at 12 18 02 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/d2fefdbc-2ded-4112-a088-926018714466">

Monthly revenue generally follows the pattern of monthly rides, with noticeable dips in the summer months of July, August, and September, and also one in February.

**g)** **Plot mean trip distance by drop-off location**

<img width="843" alt="Screenshot 2024-03-03 at 12 19 14 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/61effe60-3dd0-45ec-ae03-c0b265b1928c">

This plot presents a characteristic curve related to the cumulative density function of a normal distribution. In other words, it indicates that the drop-off points are relatively evenly distributed over the terrain. This is good to know, because geographic coordinates were not included in this dataset, so there was no obvious way to test for the distibution of locations. 

To confirm this conclusion, consider the following experiment:

**(i)** Create a sample of coordinates from a normal distribution&mdash;in this case 1,500 pairs of points from a normal distribution with a mean of 10 and a standard deviation of 5

**(ii)** Calculate the distance between each pair of coordinates 

**(iii)** Group the coordinates by endpoint and calculate the mean distance between that endpoint and all other points it was paired with

**(iv)** Plot the mean distance for each unique endpoint

<img width="849" alt="Screenshot 2024-03-03 at 12 21 06 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/4147bb33-b5e7-4416-a6af-33136c20d2ae">

The curve described by this graph is nearly identical to that of the mean distance traveled by each taxi ride to each drop-off location. This reveals that the drop-off locations in the taxi dataset are evenly distributed geographically. Note, however, that this does *not* mean that there was an even distrubtion of *rides* to each drop-off point. Let us examine this next.

**h)** **Histogram of rides by drop-off location**

<img width="964" alt="Screenshot 2024-03-03 at 12 22 20 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/4d4ed68e-ce56-40b6-859c-a61942830656">

Notice that out of the 200+ drop-off locations, a disproportionate number of locations receive the majority of the traffic, while all the rest get relatively few trips. It's likely that these high-traffic locations are near popular tourist attractions like the Empire State Building or Times Square, airports, and train and bus terminals. However, it would be helpful to know the location that each ID corresponds with. Unfortunately, this is not in the data.

### EXECUTE:

**1. EDA helps a data professional to get to know the data, understand its outliers, clean its missing values, and prepare it for future modeling.**

**2. Visualizations helped us understand that this dataset has some outliers that we will need to make decisions on prior to designing a model.**


## PACE 2

### PLAN: 

**1. The research question for this data project: “Is there a relationship between total fare amount and payment type?”**

**2. Import packages and libraries needed to compute descriptive statistics and conduct a hypothesis test.**

### ANALYZE & CONSTRUCT:

**1. Use descriptive statistics to conduct Exploratory Data Analysis (EDA).**

In the dataset, `payment_type` is encoded in integers:

*   1: Credit card
*   2: Cash
*   3: No charge
*   4: Dispute
*   5: Unknown

<img width="933" alt="Screenshot 2024-03-03 at 12 38 46 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/00f4ee9b-b6f0-4912-a1fc-1059bd8bac99">

We are interested in the relationship between payment type and the fare amount the customer pays. One approach is to look at the average fare amount for each payment type. 

<img width="304" alt="Screenshot 2024-03-03 at 12 39 34 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9bd220da-8d61-42e6-ab54-c27cbd48f877">

Based on the averages shown, it appears that customers who pay in credit card tend to pay a larger fare amount than customers who pay in cash. However, this difference might arise from random sampling, rather than being a true difference in fare amount. To assess whether the difference is statistically significant, we conduct a hypothesis test.

**2. Hypothesis Testing**

**Null hypothesis**: There is no difference in average fare between customers who use credit cards and customers who use cash. 

**Alternative hypothesis**: There is a difference in average fare between customers who use credit cards and customers who use cash

For the purpose of this exercise, our hypothesis test is the main component of your A/B test. 

$H_0$: There is no difference in the average fare amount between customers who use credit cards and customers who use cash.

$H_A$: There is a difference in the average fare amount between customers who use credit cards and customers who use cash.

You choose 5% as the significance level and proceed with a two-sample t-test.

<img width="630" alt="Screenshot 2024-03-03 at 12 42 24 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/5d40337c-ec33-4ead-bde7-5c134d45bceb">

Since the p-value is significantly smaller than the significance level of 5%, we reject the null hypothesis. 

*Notice the 'e-12' at the end of the pvalue result.*

We can conclude that there is a statistically significant difference in the average fare amount between customers who use credit cards and customers who use cash.

### EXECUTE:

**1.** The key business insight is that encouraging customers to pay with credit cards can generate more revenue for taxi cab drivers. 

**2.** This project requires an assumption that passengers were forced to pay one way or the other, and that once informed of this requirement, they always complied with it. The data was not collected this way; so, an assumption had to be made to randomly group data entries to perform an A/B test. This dataset does not account for other likely explanations. For example, riders might not carry lots of cash, so it's easier to pay for longer/farther trips with a credit card. In other words, it's far more likely that fare amount determines payment type, rather than vice versa. 


## PACE 3

### PLAN:

**1.** Import the packages that are needed for building linear regression models.

### ANALYZE:

**1.** Convert pickup & dropoff columns to datetime

**2.** Create a new column called `duration` that represents the total number of minutes that each taxi ride took.

**3.** Call `df.info()` to inspect the columns and decide which ones to check for outliers.

**4.** Plot a box plot for each feature: `trip_distance`, `fare_amount`, `duration`.

<img width="887" alt="Screenshot 2024-03-03 at 1 05 34 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/c4aea4e5-5ef1-4652-8d58-98703ced6729">

**a)** All three variables contain outliers. Some are extreme, but others not so much.

**b)** It's 30 miles from the southern tip of Staten Island to the northern end of Manhattan and that's in a straight line. With this knowledge and the distribution of the values in this column, it's reasonable to leave these values alone and not alter them. However, the values for `fare_amount` and `duration` definitely seem to have problematic outliers on the higher end.

**Imputations**

**1.** `trip_distance` outliers

**a)** To check, we need to sort the column values, eliminate duplicates, and inspect the least 10 values. 

**b)** Calculate the count of rides where the `trip_distance` is zero.

<img width="33" alt="Screenshot 2024-03-03 at 1 10 02 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/45b59a34-9213-4e46-a478-498031c05eeb">

148 out of ~23,000 rides is relatively insignificant. We could impute it with a value of 0.01, but it's unlikely to have much of an effect on the model. Therefore, the `trip_distance` column will remain untouched with regard to outliers.

**2.** `fare_amount` outliers

The range of values in the `fare_amount` column is large and the extremes don't make much sense.

**Low values:** Negative values are problematic. Values of zero could be legitimate if the taxi logged a trip that was immediately canceled.

**High values:** The maximum fare amount in this dataset is nearly \\$1,000, which seems very unlikely. High values for this feature can be capped based on intuition and statistics. The interquartile range (IQR) is \\$8. The standard formula of `Q3 + (1.5 * IQR)` yields \$26.50. That doesn't seem appropriate for the maximum fare cap. In this case, we'll use a factor of `6`, which results in a cap of $62.50.

**a)** Impute values less than $0 with `0`.

**b)** Now impute the maximum value as `Q3 + (6 * IQR)`.

<img width="289" alt="Screenshot 2024-03-03 at 1 14 31 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/40615d3e-a6e1-40bb-8dbc-e329e685ab7b">

**3.**  `duration` outliers

<img width="264" alt="Screenshot 2024-03-03 at 1 15 33 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/a5393188-8969-4b48-8580-ad0b281b7248">

The `duration` column has problematic values at both the lower and upper extremities.

**Low values:** There should be no values that represent negative time. Impute all negative durations with `0`.

**High values:** Impute high values the same way you imputed the high-end outliers for fares: `Q3 + (6 * IQR)`.

<img width="312" alt="Screenshot 2024-03-03 at 1 16 43 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/3ceca35c-b40b-4717-a77e-826941a642e0">

**Feature Engineering**

**1.** Create `mean_distance` column

For example, if our data were:

|Trip|Start|End|Distance|
|--: |:---:|:-:|    |
| 1  | A   | B | 1  |
| 2  | C   | D | 2  |
| 3  | A   | B |1.5 |
| 4  | D   | C | 3  |

The results should be:
```
A -> B: 1.25 miles
C -> D: 2 miles
D -> C: 3 miles
```

Notice that C -> D is not the same as D -> C. All trips that share a unique pair of start and end points get grouped and averaged.

Then, a new column `mean_distance` will be added where the value at each row is the average for all trips with those pickup and dropoff locations:

|Trip|Start|End|Distance|mean_distance|
|--: |:---:|:-:|  :--   |:--   |
| 1  | A   | B | 1      | 1.25 |
| 2  | C   | D | 2      | 2    |
| 3  | A   | B |1.5     | 1.25 |
| 4  | D   | C | 3      | 3    |


Let us begin by creating a helper column called `pickup_dropoff`, which contains the unique combination of pickup and dropoff location IDs for each row.

One way to do this is to convert the pickup and dropoff location IDs to strings and join them, separated by a space. The space is to ensure that, for example, a trip with pickup/dropoff points of 12 & 151 gets encoded differently than a trip with points 121 & 51.

So, the new column would look like this:

|Trip|Start|End|pickup_dropoff|
|--: |:---:|:-:|  :--         |
| 1  | A   | B | 'A B'        |
| 2  | C   | D | 'C D'        |
| 3  | A   | B | 'A B'        |
| 4  | D   | C | 'D C'        |

<img width="310" alt="Screenshot 2024-03-03 at 1 21 27 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/72ea3bfd-f1ca-4661-bcf5-7b03ad720d4d">

Now, let us use a `groupby()` statement to group each row by the new `pickup_dropoff` column, compute the mean, and capture the values only in the `trip_distance` column. Assign the results to a variable named `grouped`.

**2.** Create a `mean_distance` column that is a copy of the `pickup_dropoff` helper column.

**3.** Use the [`map()`](https://pandas.pydata.org/docs/reference/api/pandas.Series.map.html#pandas-series-map) method on the `mean_distance` series. Pass `grouped_dict` as its argument. Reassign the result back to the `mean_distance` series.
</br></br>
When we pass a dictionary to the `Series.map()` method, it will replace the data in the series where that data matches the dictionary's keys. The values that get imputed are the values of the dictionary.

**4** Repeat the process used to create the `mean_distance` column to create a `mean_duration` column.

**5.** Create two new columns, `day` (name of day) and `month` (name of month) by extracting the relevant information from the `tpep_pickup_datetime` column.

**6.** Create `rush_hour` column

Define rush hour as:
* Any weekday (not Saturday or Sunday) AND
* Either from 06:00&ndash;10:00 or from 16:00&ndash;20:00

Create a binary `rush_hour` column that contains a 1 if the ride was during rush hour and a 0 if it was not.

**7.** Create a scatterplot to visualize the relationship between `mean_duration` and `fare_amount`.

<img width="383" alt="Screenshot 2024-03-03 at 1 28 01 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/2e2c9d68-3864-4b27-84b8-3f8cd4bffdc8">

**8.** Drop features that are redundant, irrelevant, or that will not be available in a deployed environment.

**9.** Create a pairplot to visualize pairwise relationships between `fare_amount`, `mean_duration`, and `mean_distance`.

<img width="552" alt="Screenshot 2024-03-03 at 1 31 49 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/f2e42e75-1a49-4545-b878-627197c1a3e3">

These variables all show linear correlation with each other.

**10.** Next, code a correlation matrix to help determine most correlated variables.

Visualize a correlation heatmap of the data.

<img width="463" alt="Screenshot 2024-03-03 at 1 33 04 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/41b30f18-4124-45c6-92e5-d542fb036024">

`mean_duration` and `mean_distance` are both highly correlated with the target variable of `fare_amount` They're also both correlated with each other, with a Pearson correlation of 0.87.

This model will predict `fare_amount`, which will be used as a predictor variable in machine learning models. Therefore, let us try modeling with both variables even though they are correlated.

### CONSTRUCT:

**1.** Set your X and y variables. X represents the features and y represents the outcome (target) variable.

**2.** Dummy encode categorical variables

**3.** Create training and testing sets. The test set should contain 20% of the total samples. Set `random_state=0`.

**4.** Use `StandardScaler()`, `fit()`, and `transform()` to standardize the `X_train` variables. Assign the results to a variable called `X_train_scaled`.

**5.** Instantiate your model and fit it to the training data.

**6. Evaluate Model**

**a) Train Data**

Evaluate the model performance by calculating the residual sum of squares and the explained variance score (R^2). Calculate the Mean Absolute Error, Mean Squared Error, and the Root Mean Squared Error.

<img width="417" alt="Screenshot 2024-03-03 at 1 51 50 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/f9f70d7e-3611-4fd7-b82f-bb661ec65b51">

**b) Test Data**

Calculate the same metrics on the test data. Scale the `X_test` data using the scaler that was fit to the training data. Do not refit the scaler to the testing data, just transform it. Call the results `X_test_scaled`.

<img width="423" alt="Screenshot 2024-03-03 at 1 52 54 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/687e79ba-0014-41ec-8367-0e071f414398">

The model performance is high on both training and test sets, suggesting that there is little bias in the model and that the model is not overfit. In fact, the test scores were even better than the training scores.

For the test data, an R<sup>2</sup> of 0.868 means that 86.8% of the variance in the `fare_amount` variable is described by the model.

The mean absolute error is informative here because, for the purposes of the model, an error of two is not more than twice as bad as an error of one.

### EXECUTE:

**1.** obtain `actual`,`predicted`, and `residual` for the testing set, and store them as columns in a `results` dataframe.

<img width="242" alt="Screenshot 2024-03-03 at 1 55 39 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/8609e2af-aaa3-4fc8-8f01-1a4b697a61b7">

**2.** Create a scatterplot to visualize `actual` vs. `predicted`.

<img width="413" alt="Screenshot 2024-03-03 at 1 56 11 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1ea681d8-d457-413e-b5f9-5fcf8abba848">

**3.** Visualize the distribution of the `residuals` using a histogram

<img width="413" alt="Screenshot 2024-03-03 at 1 57 04 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/25ddf149-a88b-4174-a560-43e6862a6394">

**4.** results['residual'].mean()

<img width="178" alt="Screenshot 2024-03-03 at 1 57 37 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/270928b0-5b02-4468-b45e-21978648f008">

**The distribution of the residuals is approximately normal and has a mean of -0.015. The residuals represent the variance in the outcome variable that is not explained by the model. A normal distribution around zero is good, as it demonstrates that the model's errors are evenly distributed and unbiased.**

**5.** Create a scatterplot of `residuals` over `predicted`.

<img width="416" alt="Screenshot 2024-03-03 at 1 59 07 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/b7e7a383-e332-4686-8559-491a9e551416">

The model's residuals are evenly distributed above and below zero, with the exception of the sloping lines from the upper-left corner to the lower-right corner, which you know are the imputed maximum of \\$62.50 and the flat rate of \\$52 for JFK airport trips.

**6** Use the `coef_` attribute to get the model's coefficients. The coefficients are output in the order of the features that were used to train the model.

<img width="484" alt="Screenshot 2024-03-03 at 1 59 58 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1a64fa04-788b-461c-ae20-873c7ea1a40d">

The coefficients reveal that `mean_distance` was the feature with the greatest weight in the model's final prediction. A common misinterpretation is that for every mile traveled, the fare amount increases by a mean of \\$7.13. This is incorrect. The data used to train the model was standardized with `StandardScaler()`. As such, the units are no longer miles. In other words, we cannot say "for every mile traveled...", as stated above. The correct interpretation of this coefficient is: controlling for other variables, *for every +1 change in standard deviation*, the fare amount increases by a mean of \\$7.13. 

Note also that because some highly correlated features were not removed, the confidence interval of this assessment is wider.

So let us translate this back to miles instead of standard deviation

**a)** Calculate the standard deviation of `mean_distance` in the `X_train` data.

**b)** Divide the coefficient (7.133867) by the result to yield a more intuitive interpretation.

<img width="171" alt="Screenshot 2024-03-03 at 2 04 32 PM" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/645ebd5e-6f31-4e47-802b-2a8444e9a109">

Now we can make a more intuitive interpretation: for every 3.57 miles traveled, the fare increased by a mean of \\$7.13. Or, reduced: for every 1 mile traveled, the fare increased by a mean of \\$2.00.

**7. Conclusion**

* Multiple linear regression is a powerful tool to estimate a dependent continous variable from several independent variables.
* Exploratory data analysis is useful for selecting both numeric and categorical features for multiple linear regression.
* Fitting multiple linear regression models may require trial and error to select variables that fit an accurate model while maintaining model assumptions (or not, depending on our use case).


## PACE 4

### PLAN:





































