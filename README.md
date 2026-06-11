# Gestionnaire de taches - JSP/Java

## Pourquoi l'application n'est pas deployee sur le serveur AWS

Le serveur AWS fourni (ec2-15-237-202-85.eu-west-3.compute.amazonaws.com) etait inaccessible au moment du TP (timeout de connexion). Le serveur est probablement allume uniquement pendant les seances encadrees. Le deploiement sera effectue lors de la prochaine seance avec le professeur.

## Comment tester en local

### Prerequis
- JDK 25 installe
- Apache Tomcat 9 installe

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
3. Copier le projet dans le dossier webapps de Tomcat :
`ash
cp -r . /chemin/vers/tomcat/webapps/orianne
``n
4. Demarrer Tomcat et ouvrir :
``nhttp://localhost:8080/orianne/
``n
## Fonctionnalites

- Ajouter une tache (titre, description, date d'echeance)
- Afficher la liste des taches
- Marquer une tache comme terminee
- Supprimer une tache
- Stockage en session (pas de base de donnees)
