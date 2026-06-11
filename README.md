# ATELIER_JAVA_2026 - Orianne LOPEZ

## Exercices JSP/Java

Serie d'exercices sur les boucles, conditions, chaines de caracteres et tableaux en Java/JSP.

## Gestionnaire de taches

Mini projet de gestion de taches en Java/JSP sans base de donnees.

### Fonctionnalites

- Ajouter une tache (titre, description, date d'echeance)
- Afficher la liste des taches triee par date d'echeance
- Date en rouge si depassee
- Marquer une tache comme terminee
- Supprimer une tache
- Stockage en session (pas de base de donnees)

## Pourquoi l'application n'est pas deployee sur le serveur AWS

Le serveur AWS fourni (ec2-15-237-202-85.eu-west-3.compute.amazonaws.com) etait inaccessible au moment du TP (timeout de connexion). Le deploiement sera effectue lors de la prochaine seance.

## Comment tester en local

### Prerequis

- JDK 8 ou superieur
- Apache Tomcat 9

### Etapes

1. Cloner le repo :

`ash
git clone https://github.com/Valdowww/ATELIER_JAVA_2026.git
cd ATELIER_JAVA_2026
``n
2. Compiler la classe Task :

`ash
javac -d WEB-INF/classes Task.java
``n
3. Copier le projet dans webapps :

`ash
# Windows
xcopy /E /I . C:\tomcat\apache-tomcat-9.0.x\webapps\orianne
# Linux/Mac
cp -r . /opt/tomcat/webapps/orianne
``n
4. Demarrer Tomcat et ouvrir :

``nhttp://localhost:8080/orianne/index.html
``n