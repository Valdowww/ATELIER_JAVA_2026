<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<style>
body { font-family: sans-serif; max-width: 700px; margin: 40px auto; padding: 0 20px; }
h1, h2 { color: #333; }
input[type=text] { padding: 6px; width: 300px; }
input[type=submit] { margin-top: 8px; padding: 8px 20px; background: #0066cc; color: white; border: none; cursor: pointer; }
a { color: #0066cc; }
</style><title>Boucles</title></head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'etoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>
<% String valeur = request.getParameter("valeur"); %>
<% if (valeur != null && !valeur.isEmpty()) { %>
    <% int cpt = Integer.parseInt(valeur); %>
    <p><% for (int i = 1; i <= cpt; i++) { %><%= "*" %><% } %></p>
    <h2>Exercice 1 : Le carre d'etoiles</h2>
    <% for (int i = 1; i <= cpt; i++) { %><p><% for (int j = 1; j <= cpt; j++) { %>*<% } %></p><% } %>
    <h2>Exercice 2 : Triangle rectangle gauche</h2>
    <% for (int i = 1; i <= cpt; i++) { %><p><% for (int j = 1; j <= i; j++) { %>*<% } %></p><% } %>
    <h2>Exercice 3 : Triangle rectangle inverse</h2>
    <% for (int i = cpt; i >= 1; i--) { %><p><% for (int j = 1; j <= i; j++) { %>*<% } %></p><% } %>
    <h2>Exercice 4 : Triangle rectangle droite</h2>
    <% for (int i = 1; i <= cpt; i++) { %><p><% for (int j = i; j < cpt; j++) { %>&nbsp;&nbsp;<% } %><% for (int j = 1; j <= i; j++) { %>*<% } %></p><% } %>
    <h2>Exercice 5 : Triangle isocele</h2>
    <% for (int i = 1; i <= cpt; i++) { %><p><% for (int j = i; j < cpt; j++) { %>&nbsp;<% } %><% for (int j = 1; j <= i; j++) { %>*<% } %></p><% } %>
    <h2>Exercice 6 : Le demi losange</h2>
    <% for (int i = 1; i <= cpt; i++) { %><p><% for (int j = i; j < cpt; j++) { %>&nbsp;&nbsp;<% } %><% for (int j = 1; j <= i; j++) { %>*<% } %></p><% } %>
    <% for (int i = cpt; i >= 1; i--) { %><p><% for (int j = i; j < cpt; j++) { %>&nbsp;&nbsp;<% } %><% for (int j = 1; j <= i; j++) { %>*<% } %></p><% } %>
    <h2>Exercice 7 : Table de multiplication</h2>
    <% for (int i = 1; i <= cpt; i++) { %><p><%= cpt %> x <%= i %> = <%= cpt * i %></p><% } %>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>