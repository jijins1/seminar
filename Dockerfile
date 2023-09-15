# Utilisez une image de base avec Node.js préinstallé
FROM node:14

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installez les dépendances Node.js
RUN npm install

# Copiez le reste de l'application dans le conteneur
COPY . .

# Exposez le port sur lequel le serveur Node.js écoutera (remplacez 3000 par le port approprié)
EXPOSE 3000

# Commande pour démarrer l'application Node.js (remplacez "server.js" par le fichier de démarrage de votre application)
CMD ["node", "server.js"]
