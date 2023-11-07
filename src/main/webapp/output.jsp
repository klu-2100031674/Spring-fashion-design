<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Transaction Status</title>
</head>
<body>
<div >
<!--Message Status : <span style="color:green;" th:if="${message!=null}" th:text="Transaction Success"></span>-->
<!--    <span style="color:red" th:if="${message==null}" th:text="Transaction Failed"></span>-->
    <table th:if="${message!=null}" style="border:1px solid black;">
        <tr>
        <td style="font-weight:bold">Result Status</td>
            <td th:text="${message}"></td>
        </tr>
        <tr>
            <td style="font-weight:bold">Transaction Id</td>
            <td th:text="${txnId}"></td>
        </tr>
        <tr>
            <td style="font-weight:bold">Order Id</td>
            <td th:text="${orderId}"></td>
        </tr>
        <tr>
            <td style="font-weight:bold">Amount</td>
            <td th:text="${txnAmount}"></td>
        </tr>
        <tr>
            <td style="font-weight:bold">Date</td>
            <td th:text="${txnDate}"></td>
        </tr>
        <tr>
            <td style="font-weight:bold">Payment Gateway</td>
            <td th:text="${gatewayName}"></td>
        </tr>
    </table>
    <div th:if="${message==null}" style="color:red">Transaction Failed</div>
</div>
</body>
</html>