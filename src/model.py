# src/model.py

import os
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, classification_report
from dotenv import load_dotenv

# Charger les variables d'environnement
load_dotenv()
LEARNING_RATE = float(os.getenv("LEARNING_RATE"))
MAX_ITER = int(os.getenv("MAX_ITER"))
TEST_SIZE = float(os.getenv("TEST_SIZE"))
RANDOM_STATE = int(os.getenv("RANDOM_STATE"))

# Charger les données (utilisation d'un dataset scikit-learn pour l'exemple)
from sklearn.datasets import load_iris
data = load_iris()
X = data.data
y = data.target

# Diviser les données en ensembles d'entraînement et de test
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=TEST_SIZE, random_state=RANDOM_STATE)

# Créer et entraîner le modèle de régression logistique
model = LogisticRegression(max_iter=MAX_ITER, solver='liblinear')
model.fit(X_train, y_train)

# Prédictions et évaluation
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)

print(f"Précision du modèle : {accuracy}")
print("\nRapport de classification :\n", classification_report(y_test, y_pred))
