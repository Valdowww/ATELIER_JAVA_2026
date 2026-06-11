<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Task" %>
<html>
<head>
<title>Ajouter une tache</title>
<style>
body { font-family: sans-serif; max-width: 600px; margin: 40px auto; padding: 0 20px; }
h1 { color: #333; }
label { display: block; margin: 8px 0; }
input[type=text], input[type=date] { padding: 6px; width: 100%; box-sizing: border-box; }
input[type=submit] { margin-top: 12px; padding: 8px 20px; background: #0066cc; color: white; border: none; cursor: pointer; }
a { color: #0066cc; margin-right: 10px; }
</style>
</head>
<body>
<h1>Ajouter une tache</h1>
<form action="ajout.jsp" method="post">
<label>Titre : <input type="text" name="titre"></label>
<label>Description : <input type="text" name="description"></label>
<label>Date d'echeance : <input type="date" name="dateEcheance"></label>
<input type="submit" value="Ajouter">
</form>
<%
    String titre = request.getParameter("titre");
    String description = request.getParameter("description");
    String dateEcheance = request.getParameter("dateEcheance");
    if (titre != null && !titre.isEmpty()) {
        ArrayList<Task> taches = (ArrayList<Task>) session.getAttribute("taches");
        if (taches == null) { taches = new ArrayList<Task>(); }
        taches.add(new Task(titre, description, dateEcheance));
        session.setAttribute("taches", taches);
    }
%>
<br><a href="liste.jsp">Voir les taches</a>
<a href="index.jsp">Accueil</a>
</body>
</html>