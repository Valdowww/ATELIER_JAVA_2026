$readme = @'
# ATELIER_JAVA_2026 - Orianne LOPEZ

## Contenu du repo

### Exercices JSP/Java

- **lesboucles.jsp** : 7 exercices sur les boucles (carre, triangles, losange, table de multiplication)
- **lesconditions.jsp** : 2 exercices sur les conditions (comparaison, pair/impair)
- **leschaines.jsp** : 6 exercices sur les chaines (verlan, voyelles/consonnes, affichage vertical...)
- **lestableaux.jsp** : 7 exercices sur les tableaux (somme, min, max, plus proche de 0...)

### Gestionnaire de taches (mini projet)

- Ajouter une tache (titre, description, date d'echeance)
- Liste des taches triee par date d'echeance
- Date en rouge si depassee
- Marquer une tache comme terminee
- Supprimer une tache
- Stockage en session HTTP (pas de base de donnees)

## Pourquoi l'application n'est pas deployee sur le serveur AWS

Le serveur AWS fourni (ec2-15-237-202-85.eu-west-3.compute.amazonaws.com) etait inaccessible au moment du TP (timeout de connexion).

## Comment tester en local

### Prerequis

- JDK 8 ou superieur
- Apache Tomcat 9

### Etapes

1. Cloner le repo

2. Compiler la classe Task

javac -d WEB-INF/classes Task.java

3. Copier le projet dans webapps (Windows)

xcopy /E /I . C:\tomcat\apache-tomcat-9.0.118\webapps\orianne

4. Demarrer Tomcat et ouvrir dans le navigateur



## Bonus

- Tri automatique des taches par date d'echeance (Collections.sort avec Comparator)
- Date d'echeance en rouge si depassee
- Validation du titre obligatoire
- Message de confirmation apres ajout
- Header de navigation commun a toutes les pages
- Page "A propos" accessible depuis le site
- CSS sobre et professionnel sur toutes les pages
- Classe Task dans un package model (POO)

http://localhost:8080/orianne/index.html