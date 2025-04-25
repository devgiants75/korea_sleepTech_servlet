<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 25. 4. 25.
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>주문 목록 - 쇼핑몰</title>
    <style>
      body { font-family: Arial; background-color: #f4f4f4; padding: 30px; }
      .container { max-width: 800px; margin: auto; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
      h2 { text-align: center; }
      table { width: 100%; border-collapse: collapse; margin-top: 20px; }
      th, td { padding: 10px; border-bottom: 1px solid #ddd; text-align: center; }
      th { background-color: #28a745; color: white; }
      tr:hover { background-color: #f1f1f1; }
    </style>
</head>
<body>
  <div class="container">
    <h2>주문 목록</h2>
    <table>
      <tr>
        <th>주문 ID</th>
        <th>사용자 ID</th>
        <th>상품명</th>
        <th>수량</th>
      </tr>
      <%-- JSTL(Core Tag Library)의 반복문 태그 --%>
      <c:forEach var="order" items="${orderList}">
        <tr>
          <td>${order.id}</td>
          <td>${order.userId}</td>
          <td>${order.productName}</td>
          <td>${order.amount}</td>
        </tr>
      </c:forEach>
    </table>
  </div>
</body>
</html>
