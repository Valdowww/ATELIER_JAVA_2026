<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>Les tableaux</title></head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres separes par des espaces : <input type="text" name="chaine"></p>
    <input type="submit" value="Afficher">
</form>
<%
    String chaine = request.getParameter("chaine");
    if (chaine != null && !chaine.isEmpty()) {
        String[] tab = chaine.split("\\s+");
        int[] valeurs = new int[tab.length];
        for (int i = 0; i < tab.length; i++) { valeurs[i] = Integer.parseInt(tab[i]); }
%>
<p>Nombre de valeurs : <%= valeurs.length %></p>
<p>Valeur 1 : <%= valeurs[0] %>, Valeur 2 : <%= valeurs[1] %>, Valeur 3 : <%= valeurs[2] %></p>
<h2>Exercice 1 : Carre de la premiere valeur</h2>
<p><%= valeurs[0] %> x <%= valeurs[0] %> = <%= valeurs[0] * valeurs[0] %></p>
<h2>Exercice 2 : Somme des 2 premieres valeurs</h2>
<p><%= valeurs[0] %> + <%= valeurs[1] %> = <%= valeurs[0] + valeurs[1] %></p>
<h2>Exercice 3 : Somme de toutes les valeurs</h2>
<%
        int somme = 0;
        for (int v : valeurs) somme += v;
%>
<p>Somme : <%= somme %></p>
<h2>Exercice 4 : Valeur maximum</h2>
<%
        int max = valeurs[0];
        for (int v : valeurs) if (v > max) max = v;
%>
<p>Maximum : <%= max %></p>
<h2>Exercice 5 : Valeur minimum</h2>
<%
        int min = valeurs[0];
        for (int v : valeurs) if (v < min) min = v;
%>
<p>Minimum : <%= min %></p>
<h2>Exercice 6 : Valeur la plus proche de 0</h2>
<%
        int proche = valeurs[0];
        for (int v : valeurs) if (Math.abs(v) < Math.abs(proche)) proche = v;
%>
<p>Plus proche de 0 : <%= proche %></p>
<h2>Exercice 7 : Valeur la plus proche de 0 (positif prioritaire)</h2>
<%
        int proche2 = valeurs[0];
        for (int v : valeurs) {
            if (Math.abs(v) < Math.abs(proche2)) proche2 = v;
            else if (Math.abs(v) == Math.abs(proche2) && v > 0) proche2 = v;
        }
%>
<p>Plus proche de 0 : <%= proche2 %></p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>