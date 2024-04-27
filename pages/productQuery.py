'''
This file finds the user's purchase history of products
and calculates the cosine similarity between them. This
similarity score is then used to determine recommended items
for the user
'''

import sys
import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from scipy import sparse
import csv
import joblib
from AIModel import user_ids

#load the model trained in the AIModel.py file
purchase_counts = joblib.load("purchase_Counts.plk")
sparse_purchase_counts = joblib.load("sparse_Purchase_counts.plk")
cosine_similarities = joblib.load("cosine_Similarities.plk")

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

    # Remove the items that the user has already purchased
    #purchased_items = list(purchase_counts.columns[purchase_counts.loc[user_id] > 0])
    #recommended_items = [item for item in recommended_items if item not in purchased_items]

    # Changes the list items into a string, which is used for querying items
    string_items = ", ".join(map(str, recommended_items))
    return string_items

# Output the string for the php file to use
print(recommend_items(sys.argv[1]))