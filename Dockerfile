# Utilisation de l'image Java officielle
FROM openjdk:11-jre-slim

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie du fichier JAR de l'application Spring Boot dans le conteneur
COPY target/votre_application.jar /app/app.jar

# Exposition du port 8080 utilisé par l'application Spring Boot
EXPOSE 8080

# Commande pour démarrer l'application Spring Boot au lancement du conteneur
CMD ["java", "-jar", "app.jar"]