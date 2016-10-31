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
    <title>DB导出工具</title>
    <meta charset="utf8">
    <style>
        input, select, option {
            vertical-align: middle;
            width: 100%;
            text-align: center;
            background-color: white;
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
            width: 1000px;
            margin-top: 200px;
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
<center>
    <form action="mysql-export.jsp" method="post">
        <h1 style="text-align: center;">DB导出工具,目前仅仅支持mysql(以下数据,仅供测试使用)</h1>
        <table>
            <tr>
                <td> type</td>
                <td><select name="type">
                    <option value="mysql">mysql</option>
                </select></td>
            </tr>
            <tr>
                <td> host</td>
                <td><input tabindex="0" name="host" value="127.0.0.1"/></td>
            </tr>
            <tr>
                <td> port</td>
                <td><input tabindex="1" name="port" value="3306"/></td>
            </tr>
            <tr>
                <td> username</td>
                <td><input tabindex="2" name="username" value="export"/></td>
            </tr>
            <tr>
                <td> password</td>
                <td><input tabindex="3" name="password" value="simon@sd!mYu>7FAD" type="password"/></td>
            </tr>
            <tr>
                <td> databaseName</td>
                <td><input tabindex="4" name="databaseName" value="export_demo"/></td>
            </tr>
            <tr>
                <td colspan="2"><input tabindex="5" type="submit" value="开始导出"></td>
            </tr>
        </table>

    </form>
</center>
</body>
</html>
