<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<style>
body { font-family: sans-serif; max-width: 700px; margin: 40px auto; padding: 0 20px; }
h1, h2 { color: #333; }
input[type=text] { padding: 6px; width: 300px; }
input[type=submit] { margin-top: 8px; padding: 8px 20px; background: #0066cc; color: white; border: none; cursor: pointer; }
a { color: #0066cc; }
</style><title>Les chaines</title></head>
<body bgcolor=white>
<h1>Exercices sur les chaines de caracteres</h1>
<form action="#" method="post">
    <p>Saisir une chaine (6 caracteres minimum) : <input type="text" name="chaine"></p>
    <input type="submit" value="Afficher">
</form>
<%
    String chaine = request.getParameter("chaine");
    if (chaine != null && chaine.length() >= 6) {
        int longueur = chaine.length();
%>
<p>Longueur : <%= longueur %></p>
<p>3e caractere : <%= chaine.charAt(2) %></p>
<p>Sous-chaine (2-6) : <%= chaine.substring(2, 6) %></p>
<p>Position du premier 'e' : <%= chaine.indexOf('e') %></p>
<h2>Exercice 1 : Nombre de 'e'</h2>
<%
        int nbE = 0;
        for (int i = 0; i < longueur; i++) {
            if (chaine.charAt(i) == 'e') nbE++;
        }
%>
<p>Nombre de 'e' : <%= nbE %></p>
<h2>Exercice 2 : Affichage vertical</h2>
<% for (int i = 0; i < longueur; i++) { %><p><%= chaine.charAt(i) %></p><% } %>
<h2>Exercice 3 : Retour a la ligne sur espace</h2>
<% String[] mots = chaine.split(" "); for (String mot : mots) { %><p><%= mot %></p><% } %>
<h2>Exercice 4 : Une lettre sur deux</h2>
<%
        StringBuilder uneSurDeux = new StringBuilder();
        for (int i = 0; i < longueur; i += 2) {
            uneSurDeux.append(chaine.charAt(i));
        }
%>
<p><%= uneSurDeux.toString() %></p>
<h2>Exercice 5 : Verlan</h2>
<%
        StringBuilder verlan = new StringBuilder(chaine).reverse();
%>
<p><%= verlan.toString() %></p>
<h2>Exercice 6 : Consonnes et voyelles</h2>
<%
        String voyelles = "aeiouyAEIOUY";
        int nbVoyelles = 0, nbConsonnes = 0;
        for (int i = 0; i < longueur; i++) {
            char c = chaine.charAt(i);
            if (Character.isLetter(c)) {
                if (voyelles.indexOf(c) >= 0) nbVoyelles++;
                else nbConsonnes++;
            }
        }
%>
<p>Voyelles : <%= nbVoyelles %>, Consonnes : <%= nbConsonnes %></p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>