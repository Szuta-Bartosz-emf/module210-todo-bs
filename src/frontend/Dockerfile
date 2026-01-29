# Image de base nginx (Debian)
FROM nginx:latest

# Copie vos fichiers statiques dans le répertoire par défaut d'NGINX
COPY . /usr/share/nginx/html

# Installer curl (Debian)
RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

# Copier le script d'entrée
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose le port 80
EXPOSE 80

# Lancer le script au démarrage
ENTRYPOINT ["/entrypoint.sh"]
