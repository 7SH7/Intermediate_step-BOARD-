<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.pp4_board.dao.BoardDAO, com.crud.pp4_board.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>view Form</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>View Form</h1>
    <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
    <table>
        <tr><td>Category:</td><td><input type="text" name="category" value="<%=u.getCategory()%>"> </td></tr>
        <tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
    </table>

</body>
</html>