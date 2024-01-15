# FIFA 21 Analytics Project

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
- The age distribution shows a bell curve common in professional sports with most players in their early to mid-twenties.
- There's a noticeable decline in the number of players as age increases indicating fewer older players in the game.
- <img width="494" alt="image" src="https://github.com/Anish935/Anish_Portfolio/assets/156449940/71e4f6d4-defb-44ed-90c6-e8667c4808e4">


  


