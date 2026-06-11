<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Task" %>
<%
    ArrayList<Task> taches = (ArrayList<Task>) session.getAttribute("taches");
    String indexParam = request.getParameter("index");
    if (taches != null && indexParam != null) {
        int index = Integer.parseInt(indexParam);
        if (index >= 0 && index < taches.size()) {
            taches.get(index).setTerminee(true);
            session.setAttribute("taches", taches);
        }
    }
    response.sendRedirect("liste.jsp");
%>