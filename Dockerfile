# 1. Utiliser une image Node.js légère
FROM node:20-alpine

# 2. Définir le répertoire de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers de dépendances
COPY package*.json ./

# 4. Installer uniquement les dépendances de production
RUN npm install --production

# 5. Copier le reste du code source
COPY . .

# 6. Bonne pratique sécu : ne pas exécuter le conteneur en root
USER node

# 7. Indiquer le port exposé par l'application
EXPOSE 3000

# 8. Commande pour démarrer le serveur
CMD ["node", "server.js"]