# Utilisation de l'image Java officielle
FROM openjdk:11-jre-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier le jar de l'application Spring Boot dans le conteneur
COPY target/votre_application.jar /app/app.jar

# Commande pour démarrer l'application Spring Boot au lancement du conteneur
CMD ["java", "-jar", "app.jar"]