<%-- 
    Document   : list
    Created on : 16-nov-2016, 18:45:48
    Author     : Hugo
--%>

<%@page import="java.util.List"%>
<%@page import="Entities.Player"%>
<%@page import="DataAccess.PlayerRepository.PlayerRepository"%>
<%@page import="DataAccess.PlayerRepository.IPlayerRepository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Player's List</title>
        <link rel="stylesheet" href="css/uikit.gradient.min.css" />
        <script src="js/jquery.js"></script>
        <script src="js/uikit.min.js"></script>
    </head>
    <% IPlayerRepository playerRepo = new PlayerRepository();
        List<Player> playersList = playerRepo.GetAllPlayers();
    %>
    <body>
        </br>
        <h1 class="uk-text-center">Peruvian Players DataBase</h1>
        </br>
        <nav class="uk-navbar">
            <ul class="uk-navbar-nav">
                <li><a href="index.jsp">Register a Player</a></li>
                <li  class="uk-active"><a href="list.jsp">Players List</a></li>
            </ul>
        </nav>
        
        <table class="uk-table uk-table-striped">
            <caption>&nbsp;Peruvian Players List</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Weight</th>
                    <th>Height</th>
                    <th>Team</th>
                    <th>City</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% for(Player player:playersList){%>
                <form action="DeletePlayer" method="POST">
                    <input type="hidden" value="<%= player.getIdPlayer()%>" name="txtID" id="txtID" 
                    <tr>
                        <td><%= player.getIdPlayer()%></td>
                        <td><%= player.getName()%></td>
                        <td><%= player.getWeight()%></td>
                        <td><%= player.getHeight()%></td>
                        <td><%= player.getTeam().getName()%></td>
                        <td><%= player.getTeam().getCity()%></td>
                        <td><button class="uk-button" type="submit">Delete</button></td>
                    </tr>
                </form>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
