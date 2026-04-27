# 1. Utiliser une image Python légère
FROM python:3.9-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier des dépendances
COPY requirements.txt .

# 4. Installer les librairies (Flask, pytest, etc.)
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copier tout le code du projet dans le conteneur
COPY . .

# 6. Exposer le port qu'utilise Flask (souvent 5000)
EXPOSE 5000

# 7. Lancer l'application
CMD ["python", "app_satisfaction.py"]