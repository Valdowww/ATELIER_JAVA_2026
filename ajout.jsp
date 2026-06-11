<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Task" %>
<html>
<head><title>Ajouter une tache</title></head>
<body>
<h1>Ajouter une tache</h1>
<form action="ajout.jsp" method="post">
    <label>Titre : <input type="text" name="titre"></label><br>
    <label>Description : <input type="text" name="description"></label><br>
    <label>Date d'echeance : <input type="date" name="dateEcheance"></label><br>
    <input type="submit" value="Ajouter">
</form>
<%
    String titre = request.getParameter("titre");
    String description = request.getParameter("description");
    String dateEcheance = request.getParameter("dateEcheance");
    if (titre != null && !titre.isEmpty()) {
        ArrayList<Task> taches = (ArrayList<Task>) session.getAttribute("taches");
        if (taches == null) {
            taches = new ArrayList<Task>();
        }
        taches.add(new Task(titre, description, dateEcheance));
        session.setAttribute("taches", taches);
    }
%>
<a href="liste.jsp">Voir les taches</a><br>
<a href="index.jsp">Accueil</a>
</body>
</html>