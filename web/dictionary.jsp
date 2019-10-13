<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/13/2019
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>

<%
    dic.put("hello","Xin Chao");
    dic.put("how","The Nao");
    dic.put("book","Quyen Sach");
    dic.put("computer","May Tinh");

    String search = request.getParameter("dictionary");
    String result = dic.get(search);
    if (result != null){
        out.println("Word: " + search +" - ");
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
