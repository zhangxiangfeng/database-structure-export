<%--
  Created by IntelliJ IDEA.
  User: simon
  Date: 16-10-28
  Time: 下午2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎使用随意导数据库导出工具</title>
    <meta charset="utf8">
    <style>
        input {
            border: none;
        }

        body, td, th {
            font-family: "宋体";
            font-size: 12px;
            padding: 2px 5px 2px 5px;
            /*border: 1px solid gray;*/
            margin: 0 auto;
        }

        #container {
            margin-left: auto;
            margin-right: auto;
            width: 168px;
            margin-top: 300px;
        }

        table {
            border-collapse: collapse;
            border: 1px solid #CCC;
            background: #efefef;
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
            text-align: center;
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
<body id="container">
<form action="mysql-export.jsp" method="post">
    <table>
        <tr>
            <td>mysql.host</td>
            <td><input tabindex="0" name="host"/></td>
        </tr>
        <tr>
            <td>mysql.port</td>
            <td><input tabindex="1" name="port"/></td>
        </tr>
        <tr>
            <td>mysql.username</td>
            <td><input tabindex="2" name="username"/></td>
        </tr>
        <tr>
            <td>mysql.password</td>
            <td><input tabindex="3" name="password"/></td>
        </tr>
        <tr>
            <td>mysql.databaseName</td>
            <td><input tabindex="4" name="databaseName"/></td>
        </tr>
        <tr>
            <td colspan="2"><input tabindex="5" type="submit" value="export"></td>
        </tr>
    </table>

</form>
</body>
</html>
