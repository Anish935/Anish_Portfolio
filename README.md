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














[View Python Code](https://github.com/Anish935/Project_Portfolio/blob/main/waze%20code.py)
