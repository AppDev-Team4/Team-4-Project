'''
This file creates connection to the peakcart DB and pulls all
the purchases on the customerPurchases table made by customers.
Then the file calculates the cosine similarity matrix
between products.
'''
import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from scipy import sparse
import csv
import joblib
from mysql.connector import (connection)

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

# Save the model varialbles
joblib.dump(sparse_purchase_counts, "sparse_Purchase_Counts.plk")
joblib.dump(cosine_similarities, "cosine_Similarities.plk")
joblib.dump(purchase_counts, "purchase_Counts.plk")