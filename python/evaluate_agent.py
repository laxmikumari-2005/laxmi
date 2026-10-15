
import pandas as pd 
from sklearn.metrics import(
    accuracy_score,
    precision_score,
    recall_score,
    confusion_matrix
)

#Actual categories:verified labels for our test emails
actual=[
    "safe","safe","safe","safe",
    "Dangerous","dangerous",
"dangerous","dangerous"
    
]

# Predictions made by our agent version 1
predicted=[
    "safe","safe","dangerous",
"safe",
    "Dangerous","safe",
"dangerous","safe"

]

#convert categories into binary labels:
#dangerous:0,everything else:1(means TRUE)

actual_dangerous=[
    1 if email=="dangerous" else 0
    for email in actual
]
predicted_dangerous=[
    1 if email =="dangerous" else 0
    for email in predicted
]

print("Actual labels:",len(actual))
print("predicted labels:",len(predicted))

# Calculate evaluation metrics:accuracy,recall,precision
accuracy=accuracy_score(actual,predicted)

recall=recall_score(
    actual_dangerous,
    predicted_dangerous,
    zero_division=0
)

precision=precision_score(
    actual_dangerous,
    predicted_dangerous,
    zero_division=0
)

print("Accuracy:",round(accuracy*100,2),"%")
print("Dangerous Email Recall:",round(recall*100,2),"%")
print("Dangerous Email precision:",round(precision*100,2),"%")

# generate confusion matrix
matrix=confusion_matrix(
    actual_dangerous,
    predicted_dangerous,
    labels=[0,1]
)

print("\nConfusion Matrix:")
print(matrix)

print("\nRows=Actual,Columns=Predicted")

print("1=Dangerous,0=Safe/Not Dangerous")
