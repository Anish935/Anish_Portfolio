# My Projects

## 1. FIFA 21

### Mission 

The FIFA 21 analysis project employs Python, pandas for data manipulation, and Plotly for advanced visualization, meticulously dissecting player statistics to uncover strategic insights, revealing pivotal trends in attributes, demographics, and values in the virtual football realm.

### Cleaning and Organising Data Set

The FIFA 21 dataset contains a wide range of information about players including their names, nationalities, positions, team affiliations, and various skill ratings. To prepare this dataset for analysis we should consider the following steps:

1. **Remove Unnecessary Columns**: Some columns may not be relevant for analysis. For example, `photoUrl` and `playerUrl` might not be needed.

2. **Clean Data**: Address any missing or inconsistent data. For instance, the `Hits` column appears to have newline characters.

3. **Normalize Text Data**: Ensure consistency in text data like team names, positions, and nationalities.

4. **Convert Data Types**: Some columns might be better represented in different data types. For example, ratings should be numeric.

5. **Extract Useful Information**: Some columns contain multiple pieces of information. For instance, `Team & Contract` could be split into separate columns for team and contract duration.

6. **Handle Columns with Mixed Types**: As indicated by the warning, at least one column has mixed data types which should be addressed.


### Potential Areas for Insight

To draw insights from the cleaned and organized FIFA 21 dataset, we can explore various aspects of the data. Some potential areas of analysis include:

- **Player Demographics**: Analyzing the distribution of players' ages, nationalities, and teams. This can reveal which countries or clubs are most represented in the game.

- **Skill Ratings**: Examining the distribution of overall ratings (`↓OVA`), potential ratings (`POT`), and specific skill attributes like pace (`PAC`), shooting (`SHO`), etc. Insights could include identifying the top-rated players, positions with the highest skill ratings, or trends in player abilities.

- **Physical Attributes**: Analyzing height and weight distributions to understand the physical makeup of top players. This can also be broken down by position or skill level.

- **Value and Wages**: Investigating the relationship between a player's value (e.g., release clause), wage, and their skill ratings. This can highlight the economics of the game and the correlation between a player's cost and their abilities.

- **Position Analysis**: Understanding the distribution of players across different positions and analyzing the skill set required for each position.

- **Player Development and Aging**: Studying how players' ratings change with age to understand at what age players peak and start to decline.

- **Comparison by Leagues and Teams**: Comparing different leagues and teams in terms of their players' average ratings, potential, and physical attributes.

  
### Results and Findings:

#### 1. Age Distribution of Players:
<img width="494" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/71e4f6d4-defb-44ed-90c6-e8667c4808e4">

- The age distribution shows a bell curve common in professional sports with most players in their early to mid-twenties.
- There's a noticeable decline in the number of players as age increases indicating fewer older players in the game.

#### 2. Distribution of Overall Rating
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/b22bcbe4-5fda-476b-815e-800e30ca1054">

- The overall ratings are skewed towards the lower end, indicating that highly rated players (90+) are rare.
- The majority of players have ratings between 60 and 70, highlighting the competitive nature of professional football where only a few excel to the top.

#### 3. Height Distribution
<img width="483" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/931c94cd-1fe1-4194-8619-67ffe1c8f7cb">

- Player heights mostly range between 170 cm and 190 cm.
- This distribution reflects typical heights for professional football players, with few players being extremely tall or short.

#### 4. Weight Distribution
<img width="483" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/7cb6d16a-7edd-435f-a151-f2e00d4fac6f">

- Weight distribution shows a normal distribution, with most players weighing between 70 kg and 80 kg.
- This distribution aligns with the physical demands of the sport, where a balance of strength and agility is crucial.
  
These insights provide a basic understanding of the demographics, physical attributes, and skill levels of players in FIFA 21. Let us next explore a more in-depth analysis of the data set and the insights it provides us with!!

#### 5. Value vs Wage
<img width="468" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/217e3cf1-3f39-4fd6-bec7-1ec8a0926ad9">

The scatter plot illustrates the relationship between a player's overall rating, their release clause, and their wage in FIFA 21. Here are some key insights:
- **Overall Rating and Economic Value**: There's a clear positive correlation between a player's overall rating and their economic value (both release clause and wage). Players with higher overall ratings tend to have higher release clauses and wages.
- **Release Clause**: The release clause increases significantly for top-rated players, reflecting their high market value. The steep rise for players with ratings above 85 highlights the premium placed on elite talent.
- **Wage**: The color and size of the points indicate the players' wages. Players with higher wages are generally those with higher overall ratings, but there's a wider spread in wages than in release clauses. This suggests that wages might be influenced by additional factors like player popularity, club budget, or marketability.
- **High-Rating, High-Value Players**: The top right corner of the plot, where both the overall rating and release clause are high, is sparsely populated. This area represents the elite players in the game, who command both high wages and high release clauses due to their exceptional abilities.
- **Logarithmic Scale**: The use of a logarithmic scale for the release clause highlights the exponential increase in a player's value with higher skill levels, emphasizing how elite players are valued disproportionately higher than their peers.

#### 6. Position-specific Analysis 
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/2449c5bd-1ae0-4525-8d5a-c97432e4aafd">

- Typically, attacking positions (like strikers and wingers) may have higher average ratings, reflecting the premium on goal-scoring abilities in football.
- Defensive positions might have lower average ratings but could excel in specific attributes like physicality or defense.

#### 7. Age vs Performance 
<img width="483" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/19dd8f6b-6bf2-4e9a-9d00-abc82aedc072">

- Players generally peak between the ages of 27 and 32, with a gradual decline afterward.
- Young players (under 21) often have high potential ratings, indicating their future growth in the game.

#### 8. Correlation Matrix
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/16f6af5f-c2e3-4dcc-8c42-620042cee896">

- There’s likely a strong correlation between a player's overall rating and their individual attributes like pace, shooting, and passing.
- Age might be negatively correlated with potential, as younger players generally have higher potential ratings.

#### 9. Player Performance by Age and Position
<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/e809f81d-99a2-4135-9229-498fdbc54a62">

- This analysis investigates how average player ratings vary across different ages for various primary positions. By plotting these trends, we can identify if certain positions (like strikers or defenders) peak at different ages, which helps in understanding the career trajectories specific to each role. For instance, it might reveal that attacking players peak earlier in their careers, while goalkeepers or defenders maintain their performance levels for a longer period.

#### 10. Player Value vs Economic Attribute

<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/23f5be2d-8e43-4426-becd-bc13f0044caa">

<img width="482" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/42867dd8-88e2-4853-a7e9-0312933cf26c">

In this analysis, the relationship between a player's economic value (measured by release clause and wage) and key playing attributes (like pace, shooting, passing) is explored. This can illustrate which attributes are most valued in the market. For example, it might show a strong correlation between shooting ability and economic value, indicating that players with high shooting skills command higher market prices and wages. This insight is valuable for understanding what attributes drive a player's market value in the virtual economy of FIFA 21


### Conclusion 

In this project, we conducted a comprehensive analysis of the FIFA 21 dataset using Python and its libraries like pandas, matplotlib, and seaborn. We focused on extracting meaningful insights about the players' demographics, skills, and economic values within the game. Our analysis included cleaning and organizing the raw data, followed by various explorations such as understanding player performance across different ages and positions, and examining the correlation between players' economic values and their on-field attributes. These analyses provided a deeper understanding of the trends and dynamics in the virtual football world of FIFA 21, revealing how player characteristics like age, position, and skill attributes influence their market value and performance within the game. This project not only showcased the power of data analysis in sports analytics but also offered valuable insights into the factors that contribute to a player's success and their economic value in FIFA 21.

[View Python Code](https://github.com/Anish935/Anish_Portfolio/blob/main/fifa21%20codes.py)



## 2. NBA DRAFT ANALYSIS

### Mission

Our aim is to harness the analytical prowess of Python's data science libraries—Pandas for data manipulation, Seaborn for advanced visualizations, and Scikit-learn for machine learning clustering—to decode the complexities of NBA draft success and illuminate the patterns that underpin basketball excellence.

### Cleaning and Organising Data Set

The dataset contains information about NBA players drafted in various years. 

1. **Handling Missing Values**: Filled with median values or categorized as 'Unknown' for colleges.

2. **Verification of Data Types**: Ensured correct data types for analysis readiness.

3. **Data Integrity**: Confirmed the consistency and accuracy of the dataset.


### Potential Areas for Insight

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

  
### Results and Findings:

#### 1. Trend Analysis:

**(i) Number of Players Drafted per Year**: 

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/d2c6ff22-31d7-46da-8e88-7428b956aad9">

This chart shows the count of players drafted each year. It appears that the number of players drafted has remained relatively consistent over the years, with slight variations. This consistency might be due to the fixed number of picks in each NBA draft.

**(ii) Average Points Per Game Over the Years**: 

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0e6fbefe-a53d-46de-92ae-0a81b7599155">

The line chart displays the average points scored per game by players from each draft year. There seems to be some fluctuation in the scoring average over time. This could be influenced by various factors like changes in playing styles, the evolving skill sets of players, or the defensive strategies of different eras.


#### 2. Player Performance Analysis

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


#### 3. Team Analysis 

**(i) Teams' Draft Picks**

**Number of Players Drafted by Each Team**:

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/805b377a-0430-47ba-9cbb-8b694e4dea68">

This bar chart illustrates the total number of players each NBA team has drafted. Some teams have drafted more players than others, which could be due to various factors like team strategies, performance in seasons (affecting draft order), and trades.

**(ii) Team Performance Metrics**

**Average Points Per Game by Team**:

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/0fa9c920-575a-4539-ada0-058217738643">

Teams like NOH (New Orleans Hornets), VAN (Vancouver Grizzlies), and CLE (Cleveland Cavaliers) lead in this metric. This indicates that these teams, historically, have selected players who tend to score more on average.


#### 4. Advanced Statistical Analysis

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


#### 5. Draft Analysis

**(i) Average Win Shares by Draft Rank**:

<img width="451" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/1ec952b8-3a58-4062-8549-1f8c740d9f7a">

The line chart illustrates the average win shares across different draft ranks. There's a clear trend showing that players with lower draft ranks (meaning they were picked earlier) tend to have higher average win shares. This suggests that earlier draft picks, on average, are more successful in contributing to their team's success.

**(ii) Comparison of Early vs. Late Draft Picks**:

<img width="376" alt="image" src="https://github.com/Anish935/Project_Portfolio/assets/156449940/9f0b23c5-e884-4dfe-bc6d-f9380acf727b">

**a) Early Picks (Ranks 1-15)**: The average win shares for early draft picks is approximately 34.14. This indicates that players chosen in the top 15 contribute significantly to their teams, which aligns with expectations as these players are often highly touted prospects.

**b) Late Picks (Ranks 46-60)**: The average win shares for late draft picks is about 5.62, considerably lower than that for early picks. This reflects the common understanding that later draft picks are less likely to make a substantial impact, although there are always exceptions.

The graphical representation and the calculated averages corroborate the general consensus in the NBA Draft that earlier selections are expected to perform better than later ones. It's important to note that there are many outliers and individual success stories that defy these averages, but the overall trend aligns with these findings.


### Conclusion 

In this data analysis project, we meticulously cleaned and explored an NBA draft dataset, uncovering insights into draft trends, player performance, and team strategies. We identified consistent drafting patterns, established correlations between performance metrics, and discerned the average output of players per team. Utilizing advanced statistical techniques, we clustered players into categories that suggested typical roles and analyzed draft success, confirming that early draft picks generally have more successful careers based on win shares. The project highlighted data analysis's utility in sports analytics, providing a foundation for further investigative studies and potential improvements in player evaluation and team decision-making processes.

[View Python Code](https://github.com/Anish935/Project_Portfolio/blob/main/nba%20codes.ipynb)




# 3. Waze User Churn Rate Project

## Mission

**The task is to develop a machine learning model to predict user churn. An accurate model will help prevent churn, improve user retention, and grow Waze’s business.**

Waze’s free navigation app makes it easier for drivers around the world to get to where they want to go. Waze’s community of map editors, beta testers, translators, partners, and users helps make each drive better and safer. 

Throughout this project, we'll see references to the problem-solving framework PACE. The following notebook components are labeled with the respective PACE stage: Plan, Analyze, Construct, and Execute. The PACE Stages will be repeated 4 times to train the model and enable it to achieve the best result. The PACE strategy will better equip us to complete the project in a systematic manner keeping a record of the work.

## Analysis and Findings 

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
from sklearn.metrics import classification_report, accuracy_score, precision_score, \
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

![heatmap](https://github.com/Anish935/Waze-Project/assets/156449940/ddab355f-db4e-4967-a1ab-00330e0fad94)

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







[View Python Code](https://github.com/Anish935/Project_Portfolio/blob/main/waze%20code.py)
