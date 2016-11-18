<%-- 
    Document   : register.jsp
    Created on : 16-nov-2016, 18:45:26
    Author     : Hugo
--%>

<%@page import="java.util.List"%>
<%@page import="Entities.Team"%>
<%@page import="DataAccess.TeamRepository.TeamRepository"%>
<%@page import="DataAccess.TeamRepository.ITeamRepository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register a Player</title>
        <link rel="stylesheet" href="css/uikit.gradient.min.css" />
        <script src="js/jquery.js"></script>
        <script src="js/uikit.min.js"></script>
    </head>
    <%  ITeamRepository teamRepo = new TeamRepository();
        List<Team>allTeams = teamRepo.GetAllTeams();
        %>
    <body>
        </br>
        <h1 class="uk-text-center">Peruvian Players DataBase</h1>
        </br>
        <nav class="uk-navbar">
            <ul class="uk-navbar-nav">
                <li class="uk-active"><a href="register.jsp">Register a Player</a></li>
                <li><a href="list.jsp">Players List</a></li>
            </ul>
        </nav>
        </br>
        <form class="uk-form" action="Register" method="POST">
            <fieldset>
                <legend>Player Registration</legend>
                <div class="uk-form-row">
                    <input id="txtName" name="txtName" type="text" maxlength="150" placeholder="Complete Name">
                </div>
                <div class="uk-form-row">
                    <input id="txtWeight" step="any" name="txtWeight" type="number" maxlength="18" placeholder="Weight">
                </div>
                <div class="uk-form-row">
                    <input id="txtHeight" step="any" name="txtHeight" type="number" maxlength="18" placeholder="Height">
                </div>
                <div class="uk-form-row">
                    <select id="slTeam" name="slTeam" required="true">
                        <option selected="true" disabled="true">Select a Team...</option>
                        <% for(Team temp:allTeams){ %>
                        <option value="<%= temp.getIdTeam()%>"><%=temp.getName()%></option>
                        <%}%>
                    </select>
                </div>
                <div class="uk-form-row">
                    <button type="submit" class="uk-button">Register</button>
                </div>
            </fieldset>
        </form>
    </body>
</html>
