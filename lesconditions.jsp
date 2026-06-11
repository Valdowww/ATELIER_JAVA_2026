<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<style>
body { font-family: sans-serif; max-width: 700px; margin: 40px auto; padding: 0 20px; }
h1, h2 { color: #333; }
input[type=text] { padding: 6px; width: 300px; }
input[type=submit] { margin-top: 8px; padding: 8px 20px; background: #0066cc; color: white; border: none; cursor: pointer; }
a { color: #0066cc; }
</style><title>Les conditions</title></head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" name="valeur1"></p>
    <p>Saisir la valeur 2 : <input type="text" name="valeur2"></p>
    <p>Saisir la valeur 3 : <input type="text" name="valeur3"></p>
    <input type="submit" value="Afficher">
</form>
<%
    String valeur1 = request.getParameter("valeur1");
    String valeur2 = request.getParameter("valeur2");
    String valeur3 = request.getParameter("valeur3");
    if (valeur1 != null && valeur2 != null && !valeur1.isEmpty() && !valeur2.isEmpty()) {
        int v1 = Integer.parseInt(valeur1);
        int v2 = Integer.parseInt(valeur2);
        if (v1 > v2) {
%><p>Valeur 1 est superieure a Valeur 2.</p><%
        } else if (v1 < v2) {
%><p>Valeur 1 est inferieure a Valeur 2.</p><%
        } else {
%><p>Valeur 1 est egale a Valeur 2.</p><%
        }
%>
<h2>Exercice 1 : Comparaison</h2>
<%
        if (valeur3 != null && !valeur3.isEmpty()) {
            int v3 = Integer.parseInt(valeur3);
            int min = Math.min(v1, v2);
            int max = Math.max(v1, v2);
            if (v3 > min && v3 < max) {
%><p>Oui, C est compris entre A et B.</p><%
            } else {
%><p>Non, C n'est pas compris entre A et B.</p><%
            }
        }
%>
<h2>Exercice 2 : Pair ou Impair</h2>
<%
        if (v1 % 2 == 0) {
%><p><%= v1 %> est pair.</p><%
        } else {
%><p><%= v1 %> est impair.</p><%
        }
    }
%>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>