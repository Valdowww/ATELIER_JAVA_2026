<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title>A propos</title></head>
<body>
<%@ include file="header.jsp" %>
<h1>A propos</h1>
<h2>Contenu du repo</h2>
<h3>Exercices JSP/Java</h3>
<ul>
<li><b>lesboucles.jsp</b> : 7 exercices sur les boucles (carre, triangles, losange, table de multiplication)</li>
<li><b>lesconditions.jsp</b> : 2 exercices sur les conditions (comparaison, pair/impair)</li>
<li><b>leschaines.jsp</b> : 6 exercices sur les chaines (verlan, voyelles/consonnes, affichage vertical...)</li>
<li><b>lestableaux.jsp</b> : 7 exercices sur les tableaux (somme, min, max, plus proche de 0...)</li>
</ul>
<h3>Gestionnaire de taches</h3>
<ul>
<li>Ajouter une tache (titre, description, date d'echeance)</li>
<li>Liste des taches triee par date d'echeance</li>
<li>Date en rouge si depassee</li>
<li>Marquer une tache comme terminee</li>
<li>Supprimer une tache</li>
<li>Stockage en session HTTP (pas de base de donnees)</li>
</ul>
<h2>Pourquoi l'application n'est pas deployee sur le serveur AWS</h2>
<p>Le serveur AWS fourni (ec2-15-237-202-85.eu-west-3.compute.amazonaws.com) etait inaccessible au moment du TP (timeout de connexion).</p>
<h2>Comment tester en local</h2>
<h3>Prerequis</h3>
<ul>
<li>JDK 8 ou superieur</li>
<li>Apache Tomcat 9</li>
</ul>
<h3>Etapes</h3>
<ol>
<li>Cloner le repo : <code>git clone https://github.com/Valdowww/ATELIER_JAVA_2026.git</code></li>
<li>Compiler la classe Task : <code>javac -d WEB-INF/classes Task.java</code></li>
<li>Copier le projet dans webapps : <code>xcopy /E /I . C:\tomcat\apache-tomcat-9.0.118\webapps\orianne</code></li>
<li>Demarrer Tomcat et ouvrir : <code>http://localhost:8080/orianne/sommaire.jsp</code></li>
</ol>
</div>
</body>
</html>