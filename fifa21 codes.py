import pandas as pd
# Step 1: Remove unnecessary columns
columns_to_drop = ['photoUrl', 'playerUrl']
fifa21_cleaned = fifa21_data.drop(columns=columns_to_drop)

# Step 2: Clean data - remove newline characters and other inconsistencies
fifa21_cleaned = fifa21_cleaned.replace('\n', '', regex=True)

# Step 4: Convert data types - convert columns that should be numeric
numeric_columns = ['↓OVA', 'POT', 'PAC', 'SHO', 'PAS', 'DRI', 'DEF', 'PHY']
fifa21_cleaned[numeric_columns] = fifa21_cleaned[numeric_columns].apply(pd.to_numeric, errors='coerce')

# Step 5: Extract useful information - Split 'Team & Contract' into 'Team' and 'Contract Years'
fifa21_cleaned[['Team', 'Contract']] = fifa21_cleaned['Team & Contract'].str.extract(r'(.+)(\d{4} ~ \d{4})')
fifa21_cleaned = fifa21_cleaned.drop(columns=['Team & Contract'])

# Checking for any columns with mixed types
mixed_type_columns = fifa21_cleaned.columns[fifa21_cleaned.dtypes == 'object']
fifa21_cleaned[mixed_type_columns].head()

# Convert height from feet and inches to centimeters
def convert_height_to_cm(height):
    if pd.isna(height):
        return None
    parts = height.split("'")
    feet = int(parts[0])
    inches = int(parts[1].replace('"', ''))
    return (feet * 30.48) + (inches * 2.54)

# Convert weight from pounds to kilograms
def convert_weight_to_kg(weight):
    if pd.isna(weight):
        return None
    pounds = int(weight.replace('lbs', ''))
    return pounds * 0.453592

# Apply conversion to the dataset
fifa21_cleaned['Height_cm'] = fifa21_cleaned['Height'].apply(convert_height_to_cm)
fifa21_cleaned['Weight_kg'] = fifa21_cleaned['Weight'].apply(convert_weight_to_kg)

# Drop original height and weight columns
fifa21_cleaned = fifa21_cleaned.drop(columns=['Height', 'Weight'])

# Display the first few rows to verify the changes
fifa21_cleaned[['Name', 'Height_cm', 'Weight_kg']].head()

import matplotlib.pyplot as plt
import seaborn as sns

# Set up the visualisation settings
sns.set(style="whitegrid")

# Insights 1: Player Demographics - Age Distribution
plt.figure(figsize=(10, 6))
sns.histplot(fifa21_cleaned['Age'], bins=30, kde=True)
plt.title('Age Distribution of FIFA 21 Players')
plt.xlabel('Age')
plt.ylabel('Number of Players')
plt.show()

# Insights 2: Skill Ratings - Distribution of Overall Ratings
plt.figure(figsize=(10, 6))
sns.histplot(fifa21_cleaned['↓OVA'], bins=30, kde=True, color='green')
plt.title('Distribution of Overall Ratings in FIFA 21')
plt.xlabel('Overall Rating')
plt.ylabel('Number of Players')
plt.show()

# Insights 3: Physical Attributes - Height Distribution
plt.figure(figsize=(10, 6))
sns.histplot(fifa21_cleaned['Height_cm'], bins=30, kde=True, color='orange')
plt.title('Height Distribution of FIFA 21 Players')
plt.xlabel('Height (cm)')
plt.ylabel('Number of Players')
plt.show()

# Insights 4: Physical Attributes - Weight Distribution
plt.figure(figsize=(10, 6))
sns.histplot(fifa21_cleaned['Weight_kg'], bins=30, kde=True, color='purple')
plt.title('Weight Distribution of FIFA 21 Players')
plt.xlabel('Weight (kg)')
plt.ylabel('Number of Players')
plt.show()

# Converting 'Release Clause' and 'Wage' to numerical values for analysis
def convert_currency_to_numeric(value):
    if pd.isna(value):
        return None
    if 'M' in value:
        return float(value.replace('€', '').replace('M', '')) * 1e6
    elif 'K' in value:
        return float(value.replace('€', '').replace('K', '')) * 1e3
    else:
        return float(value.replace('€', ''))

# Apply conversion to 'Release Clause' and 'Wage'
fifa21_cleaned['Release_Clause_Euro'] = fifa21_cleaned['Release Clause'].apply(convert_currency_to_numeric)
fifa21_cleaned['Wage_Euro'] = fifa21_cleaned['Wage'].apply(convert_currency_to_numeric)

# Drop original 'Release Clause' and 'Wage' columns
fifa21_cleaned = fifa21_cleaned.drop(columns=['Release Clause', 'Wage'])

# Scatter plot to investigate the relationship between Overall Rating, Release Clause, and Wage
plt.figure(figsize=(12, 8))
sns.scatterplot(data=fifa21_cleaned, x='↓OVA', y='Release_Clause_Euro', hue='Wage_Euro', size='Wage_Euro', alpha=0.6)
plt.title('Relationship Between Overall Rating, Release Clause, and Wage of FIFA 21 Players')
plt.xlabel('Overall Rating')
plt.ylabel('Release Clause (€)')
plt.legend(title='Wage (€)', loc='upper left')
plt.yscale('log')
plt.show()


# Preparing data for various analyses

# Position-Specific Analysis: Extracting primary position from 'Positions'
fifa21_cleaned['PrimaryPosition'] = fifa21_cleaned['Positions'].str.split().str[0]

# Aggregate data for League and Team Comparisons
league_team_agg = fifa21_cleaned.groupby(['Team', 'Contract']).agg(
    Average_Rating=('↓OVA', 'mean'),
    Average_Potential=('POT', 'mean'),
    Average_Value=('Release_Clause_Euro', 'mean'),
    Average_Wage=('Wage_Euro', 'mean')
).reset_index()

# Age vs Performance
age_performance = fifa21_cleaned.groupby('Age').agg(
    Average_Rating=('↓OVA', 'mean'),
    Average_Potential=('POT', 'mean')
)

# Nationality Analysis
nationality_analysis = fifa21_cleaned.groupby('Nationality').agg(
    Player_Count=('Name', 'count'),
    Average_Rating=('↓OVA', 'mean'),
    Average_Value=('Release_Clause_Euro', 'mean')
)

# Player Potential Analysis
potential_diff = fifa21_cleaned['POT'] - fifa21_cleaned['↓OVA']
rising_stars = fifa21_cleaned.loc[potential_diff.nlargest(10).index]

# Correlation Matrix
correlation_matrix = fifa21_cleaned[['↓OVA', 'POT', 'PAC', 'SHO', 'PAS', 'DRI', 'DEF', 'PHY', 'Height_cm', 'Weight_kg', 'Release_Clause_Euro', 'Wage_Euro']].corr()

# Top Players Analysis
top_players = fifa21_cleaned.nlargest(10, '↓OVA')

# Visualizing some of the analyses

# Position-Specific Analysis: Average Rating by Primary Position
plt.figure(figsize=(12, 6))
sns.boxplot(x='PrimaryPosition', y='↓OVA', data=fifa21_cleaned)
plt.title('Average Rating by Primary Position')
plt.xlabel('Primary Position')
plt.ylabel('Average Rating')
plt.show()

# Age vs Performance
plt.figure(figsize=(12, 6))
age_performance[['Average_Rating', 'Average_Potential']].plot(kind='line')
plt.title('Age vs Average Rating and Potential')
plt.xlabel('Age')
plt.ylabel('Average Rating / Potential')
plt.show()

# Correlation Matrix
plt.figure(figsize=(10, 8))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.title('Correlation Matrix of Player Attributes')
plt.show()



# Extract primary position
fifa21_data['PrimaryPosition'] = fifa21_data['Positions'].str.split().str[0]

# Group by Age and Primary Position
performance_by_age_position = fifa21_data.groupby(['Age', 'PrimaryPosition'])['↓OVA'].mean().reset_index()

# Plot
plt.figure(figsize=(15, 8))
sns.lineplot(x='Age', y='↓OVA', hue='PrimaryPosition', data=performance_by_age_position)
plt.title('Player Performance by Age and Position')
plt.xlabel('Age')
plt.ylabel('Average Overall Rating')
plt.legend(title='Primary Position', bbox_to_anchor=(1.05, 1), loc='upper left')
plt.show()

# Convert 'Release Clause' and 'Wage' to numerical values for analysis
def convert_currency_to_numeric(value):
    if 'M' in value:
        return float(value.replace('€', '').replace('M', '')) * 1e6
    elif 'K' in value:
        return float(value.replace('€', '').replace('K', '')) * 1e3
    else:
        return float(value.replace('€', ''))

fifa21_data['Release_Clause_Euro'] = fifa21_data['Release Clause'].apply(convert_currency_to_numeric)
fifa21_data['Wage_Euro'] = fifa21_data['Wage'].apply(convert_currency_to_numeric)

# Selecting key attributes for analysis
attributes = ['PAC', 'SHO', 'PAS', 'DRI', 'DEF', 'PHY']

# Plotting the relationship
plt.figure(figsize=(15, 10))
for i, attr in enumerate(attributes, 1):
    plt.subplot(2, 3, i)
    sns.scatterplot(x=attr, y='Release_Clause_Euro', data=fifa21_data)
    plt.title(f'Release Clause vs. {attr}')
    plt.ylabel('Release Clause (€)')
    plt.xlabel(attr)

plt.tight_layout()
plt.show()
