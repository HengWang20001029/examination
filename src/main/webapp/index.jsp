<%@ page contentType="text/html; charset=UTF-8" import="java.sql.Connection" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://cn-zz-bgp-2.natfrp.cloud:21506/wangheng"
                   user="root" password="heng.1009"/>
<sql:query dataSource="${snapshot}" var="result">
    SELECT * from student;
</sql:query>
<h1>
    test
</h1>
<table border="1" width="100%">
    <tr>
        <th>Sname</th>
        <th>Sid</th>
        <th>Sage</th>
        <th>Skey</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td><c:out value="${row.Sname}"/></td>
            <td><c:out value="${row.Sid}"/></td>
            <td><c:out value="${row.Sage}"/></td>
            <td><c:out value="${row.Skey}"/></td>
        </tr>
    </c:forEach>
</table>
<%--<br/>--%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <th>书号</th>--%>
<%--        <th>书名</th>--%>
<%--        <th>作者</th>--%>
<%--        <th>出版社</th>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        String driverClass="com.mysql.jdbc.Driver";--%>
<%--        String url="jdbc:mysql://cn-zz-bgp-2.natfrp.cloud:21506/wangheng";--%>
<%--        String user="root";--%>
<%--        String password="heng.1009";--%>
<%--        Connection conn;--%>
<%--        try{--%>
<%--            Class.forName(driverClass);--%>
<%--            conn=DriverManager.getConnection(url, user, password);--%>
<%--            Statement stmt=conn.createStatement();--%>
<%--            String sql="select * from student";--%>
<%--            ResultSet rs=stmt.executeQuery(sql);--%>
<%--            while(rs.next()){--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%=rs.getString("Snamw") %></td>--%>
<%--        <td><%=rs.getString("Sid") %></td>--%>
<%--        <td><%=rs.getString("Sage") %></td>--%>
<%--        <td><%=rs.getString("Skey") %></td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--            }--%>
<%--        }catch (Exception ex){--%>
<%--            ex.printStackTrace();--%>

<%--        }--%>
<%--    %>--%>
<%--</table>--%>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>

</html>