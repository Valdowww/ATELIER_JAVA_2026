<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="model.Task" %>
<%@ page import="java.time.LocalDate" %>
<html>
<head><title>Liste des taches</title></head>
<body>
<%@ include file="header.jsp" %>
<h1>Liste des taches</h1>
<%
    ArrayList<Task> taches = (ArrayList<Task>) session.getAttribute("taches");
    if (taches == null || taches.isEmpty()) {
%>
<p>Aucune tache.</p>
<%
    } else {
        Collections.sort(taches, (a, b) -> a.getDateEcheance().compareTo(b.getDateEcheance()));
        for (int i = 0; i < taches.size(); i++) {
            Task t = taches.get(i);
            boolean depasse = !t.getDateEcheance().isEmpty() && LocalDate.parse(t.getDateEcheance()).isBefore(LocalDate.now());
%>
<div class="tache <%= t.isTerminee() ? "terminee" : "" %>">
<b><%= t.getTitre() %></b> - <%= t.getDescription() %> - <span style="<%= depasse ? "color:red" : "" %>"><%= t.getDateEcheance() %></span>
<% if (t.isTerminee()) { %><span>[Terminee]</span><% } %>
<br><a href="terminer.jsp?index=<%= i %>">Marquer terminee</a>
<a href="supprimer.jsp?index=<%= i %>">Supprimer</a>
</div>
<%
        }
    }
%>
<br><a href="ajout.jsp">Ajouter une tache</a>
</div>
</body>
</html>