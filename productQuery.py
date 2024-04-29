'''
This file creates connection to the peakcart DB and pulls all
the purchases on the customerPurchases table made by customers.
Then the file calculates the cosine similarity matrix
between products. Then it finds the user's purchase history of products
and calculates the cosine similarity between them. This
similarity score is then used to determine recommended items
for the user
'''
import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from scipy import sparse
import csv
from mysql.connector import (connection)
import sys

# Initialize lists to store user IDs and product IDs
user_ids = []
product_ids = []

# Create connection to DB
db = connection.MySQLConnection(user= "root", password="Mr.E423!" , host="localhost" , database= "peakcart")
cursor = db.cursor()

# Query all the purchase history from the customerPurchases table
cursor.execute("SELECT CustomerID, ProductID FROM customerpurchases ORDER BY CustomerID")
results = cursor.fetchall()

for row in results:
    user_ids.append(row[0])
    product_ids.append(row[1])

# Load the purchase history data into a DataFrame
data = {'user_id':user_ids, 'product_id': product_ids}
purchase_history = pd.DataFrame(data)

# Count the number of purchases for each user and product combination
purchase_counts = purchase_history.groupby(['user_id', 'product_id']).size().unstack(fill_value=0)

# Convert the purchase counts to a sparse matrix
sparse_purchase_counts = sparse.csr_matrix(purchase_counts)

# Compute the cosine similarity matrix between the products
cosine_similarities = cosine_similarity(sparse_purchase_counts.T)

# Find the index of the user_id in the user_ids list
def find_UserID_Index(user_id, user_ids):
    # Convert the list into set to get rid of duplicates
    temp = set(user_ids)
    temp = list(temp)

    # Sort the userids
    user_ids = sorted(temp)

    # Get the index of the userid
    index = user_ids.index(user_id)
    return index

# Define a function to recommend items for a user based on their purchase history
# 'n' can be the number of items we have featured for an individual user
def recommend_items(user_id, n=8):
    # Find the index of the user_id
    user_id = find_UserID_Index(user_id, user_ids)

    # Get the user's purchase history
    user_history = sparse_purchase_counts[user_id].toarray().flatten()

    # Compute the average cosine similarity between the user's purchased items and all other items
    similarities = cosine_similarities.dot(user_history)

    # Get the indices of the user's purchased items
    purchased_indices = np.where(user_history > 0)[0]

    # Set the similarity scores for purchased items to 0
    similarities[purchased_indices] = 0

    # Sort the items by similarity score and return the top n items
    recommended_indices = np.argsort(similarities)[::-1][:n]
    recommended_items = list(purchase_counts.columns[recommended_indices])

    # Changes the list items into a string, which is used for querying items
    string_items = ", ".join(map(str, recommended_items))
    return string_items


# Take the php input and change to integer
input = int(sys.argv[1])
print(recommend_items(input))