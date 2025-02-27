# Makefile pour automatiser le workflow du projet IA

# Installation de l'environnement virtuel et des dépendances
setup:
	@echo "Création et activation de l'environnement virtuel..."
	python -m venv venv
	source venv/Scripts/activate && pip install -r requirements.txt

# Activation de l'environnement virtuel
activate:
	@echo "Activation de l'environnement virtuel..."
	source venv/Scripts/activate

# Installation des dépendances
install:
	@echo "Installation des dépendances..."
	source venv/Scripts/activate && pip install -r requirements.txt

# Exécution du modèle
run:
	@echo "Exécution du modèle de régression logistique..."
	source venv/Scripts/activate && python src/model.py

# Nettoyage (suppression de l'environnement virtuel)
clean:
	@echo "Nettoyage..."
	rm -rf venv
