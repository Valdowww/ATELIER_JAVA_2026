<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head><title>Liste des tâches</title></head>
<body>
<h1>Liste des tâches</h1>
<%
    ArrayList<Task> taches = (ArrayList<Task>) session.getAttribute("taches");
    if (taches == null || taches.isEmpty()) {
%>
<p>Aucune tâche.</p>
<%
    } else {
        for (int i = 0; i < taches.size(); i++) {
            Task t = taches.get(i);
%>
<div>
    <b><%= t.getTitre() %></b> - <%= t.getDescription() %> - <%= t.getDateEcheance() %>
    <% if (t.isTerminee()) { %> [Terminée] <% } %>
    <a href="terminer.jsp?index=<%= i %>">Marquer terminée</a>
    <a href="supprimer.jsp?index=<%= i %>">Supprimer</a>
</div>
<%
        }
    }
%>
<a href="ajout.jsp">Ajouter une tâche</a><br>
<a href="index.jsp">Accueil</a>
</body>
</html>
