<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href='<c:url value="/resources/css/main.css" />' rel='stylesheet'>
    <link href='<c:url value="/resources/css/delete.css" />' rel='stylesheet'>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="webjars/jquery/3.6.0/jquery.js" />
    </script>
    <script type="text/javascript" src="webjars/popper.js/2.9.3/umd/popper.min.js" />
    </script>
    <link href='<c:url value="/resources/images/tamlogo.png" />' rel='icon'>
    <title>Order</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<jsp:include page="header.jsp" />

<body>
    <div class="container" style="margin-top: 10px;">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6" style="width:100%;">
            <form:form action="search" method="get">
                <div class="input-group">
                    <input name="searchInput" type="text" class="form-control" placeholder="Search by name..." />
                    <span class="input-group-btn">
                        <button class="btn btn-outline-primary" style="height: 38px; type=" submit">Search</button>
                    </span>
                </div>
            </form:form>
        </div>
    </div>
        <h2 style="margin-top: 20px; margin-bottom: 20px;">Order Manager</h2>
            <div class="col-xs-12 col-sm-12 col-md-10">
                <c:if test="${not empty orderList}">
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">OrderID</th>
                                <th scope="col">OrderDate</th>
                                <th scope="col">CustomerName</th>
                                <th scope="col">ViewDetail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="order" items="${orderList}" varStatus="checkout">
                                <tr>
                                    <th scope="row" style="padding-top:15px;">${order.id}</th>
                                    <td style="padding-top:15px;">${order.orderDate}</td>
                                    <td style="padding-top:15px;">${order.customerName}</td>
                                    <td>
                                        <button class="btn btn-sm btn-primary"
                                            onclick="location.href='view_orderId=${order.id}'">View</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>
                <c:if test="${orderList.size() == 0}">
                    <br>
                    <div class="alert alert-warning">
                        There is no data, please search again with new keyword... Love <3 </div>
                </c:if>
            </div>
</body>

</html>