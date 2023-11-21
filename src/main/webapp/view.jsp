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
        <tr><td>Category: <%=u.getCategory()%></td></tr>
        <tr><td>Title: <%= u.getTitle()%></td></tr>
        <tr><td>Writer: <%= u.getWriter()%></td></tr>
        <tr><td>Content: <%= u.getContent()%></td></tr>
    </table>

</body>
</html>