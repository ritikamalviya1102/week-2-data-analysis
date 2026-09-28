import pandas as pd

#  PYTHON FOR DATA ANALYSIS

# Load the dataset
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv")

# LOAD CSV AND DISPLAY BASIC INFORMATION

print("----- FIRST 5 ROWS -----")
print(df.head())

print("\n----- DATASET INFORMATION -----")
df.info()

print("\n----- DATASET SHAPE -----")
print(df.shape)

print("\n----- COLUMN NAMES -----")
print(df.columns.tolist())

# HANDLE MISSING VALUES AND DUPLICATES

print("\n----- MISSING VALUES BEFORE CLEANING -----")
print(df.isnull().sum())

print("\nTotal missing values:", df.isnull().sum().sum())

print("\n----- DUPLICATES BEFORE CLEANING -----")
print("Duplicate rows:", df.duplicated().sum())

# Remove duplicate rows
df = df.drop_duplicates()

# Remove rows containing missing values
df = df.dropna()

print("\n----- AFTER CLEANING -----")
print("Total missing values:", df.isnull().sum().sum())
print("Duplicate rows:", df.duplicated().sum())
print("Final dataset shape:", df.shape)

# TOTAL REVENUE BY CATEGORY

print("\n----- TOTAL REVENUE BY CATEGORY -----")

revenue_by_category = (
    df.groupby("category")["total_price"]
    .sum()
    .sort_values(ascending=False)
)

print(revenue_by_category)


# SORT DATA BY MULTIPLE COLUMNS

print("\n----- DATA SORTED BY CATEGORY AND TOTAL PRICE -----")

sorted_data = df.sort_values(
    by=["category", "total_price"],
    ascending=[True, False]
)

print(
    sorted_data[
        [
            "order_id",
            "category",
            "product_name",
            "total_price"
        ]
    ].head(20)
)

# CORRELATION MATRIX

print("\n----- CORRELATION MATRIX -----")

# order_id is an identifier, so it is excluded from analysis
numerical_columns = [
    "quantity",
    "unit_price",
    "total_price"
]

correlation_matrix = df[numerical_columns].corr()

print(correlation_matrix)

# CORRELATION MATRIX VISUALIZATION

import matplotlib.pyplot as plt
import seaborn as sns

plt.figure(figsize=(8, 6))

sns.heatmap(
    correlation_matrix,
    annot=True,
    cmap="coolwarm",
    fmt=".2f"
)

plt.title("Correlation Matrix of Numerical Variables")
plt.tight_layout()
plt.show()