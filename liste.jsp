<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Task" %>
<html>
<head><title>Liste des taches</title></head>
<body>
<h1>Liste des taches</h1>
<%
    ArrayList<Task> taches = (ArrayList<Task>) session.getAttribute("taches");
    if (taches == null || taches.isEmpty()) {
%>
<p>Aucune tache.</p>
<%
    } else {
        for (int i = 0; i < taches.size(); i++) {
            Task t = taches.get(i);
%>
<div>
    <b><%= t.getTitre() %></b> - <%= t.getDescription() %> - <%= t.getDateEcheance() %>
    <% if (t.isTerminee()) { %> [Terminee] <% } %>
    <a href="terminer.jsp?index=<%= i %>">Marquer terminee</a>
    <a href="supprimer.jsp?index=<%= i %>">Supprimer</a>
</div>
<%
        }
    }
%>
<a href="ajout.jsp">Ajouter une tache</a><br>
<a href="index.jsp">Accueil</a>
</body>
</html>