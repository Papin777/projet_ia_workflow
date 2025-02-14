#!/bin/bash

# Vérifie si l'environnement virtuel existe, sinon le crée
if [ ! -d "venv" ]; then
    echo "Création de l'environnement virtuel..."
    python -m venv venv
fi

# Active l'environnement virtuel
echo "Activation de l'environnement virtuel..."
source venv/Scripts/activate

# Installe les dépendances
if [ -f "requirements.txt" ]; then
    echo "Installation des dépendances..."
    pip install -r requirements.txt
else
    echo "Aucun fichier requirements.txt trouvé."
fi

# Fin du script
echo "Setup terminé !"

