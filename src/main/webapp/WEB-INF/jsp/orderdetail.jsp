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
    <title>OrderDetail</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link href='<c:url value="/resources/images/logocat.png" />' rel='icon'>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<jsp:include page="header.jsp" />

<body>
    <div class="container">
    <h2 style="margin-top: 20px; margin-bottom: 20px;">Details of the Orders</h2>
        <h6 style="opacity: 0.4; color: black; margin-bottom: 20px;">Please Check Carefully Before Complete Your Order!
        </h6>
        <div class="col-xs-12 col-sm-12 col-md-10" style="width:100%;">
            <c:if test="${not empty orderDetails}">
                <div class="rows">
                    <div class="col-sm-9" style="width:100%;">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width:5%;">OrderDetailId</th>
                                    <th style="width:30%;">OrderId</th>
                                    <th style="width:10%;">OrderDate</th>
                                    <th style="width:20%;">ProductName</th>
                                    <th style="width:15%;">Quantity</>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="detail" items="${orderDetails}">
                                        <tr>
                                            <td>${detail.id }</td>
                                            <td>${detail.order.id }</td>
                                            <td>${detail.order.orderDate }</td>
                                            <td>${detail.product.name }</td>
                                            <td>${detail.quantity }</td>
                                        </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <hr />
                    </div>
                </div>
            </c:if>
            <c:if test="${orderDetails.size() == 0}">
                <br>
                <div class="alert alert-warning">
                    There is no data, please search again with new keyword... Love <3 </div>
            </c:if>
        </div>
    </div>
</body>

</html>
