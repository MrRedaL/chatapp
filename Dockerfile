# Utilisation de l'image Java officielle pour la construction
FROM maven:3.8.4-openjdk-11-slim AS builder

# Copie du code source dans le conteneur
WORKDIR /app
COPY . .

# Construction de l'application avec Maven
RUN mvn clean package -DskipTests

# Utilisation de l'image Tomcat officielle pour l'exécution
FROM tomcat:9.0.56-jdk11-openjdk-slim

# Copie du fichier WAR de l'application Spring Boot dans le répertoire webapps de Tomcat
COPY --from=builder /app/target/votre_application.war /usr/local/tomcat/webapps/

# Exposition du port 8080 utilisé par Tomcat
EXPOSE 8080

# Commande pour démarrer Tomcat lors du lancement du conteneur
CMD ["catalina.sh", "run"]