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
    <title>주문 등록 - 쇼핑몰</title>
    <style>
      body { font-family: Arial; background-color: #f4f4f4; padding: 30px; }
      .container { max-width: 500px; margin: auto; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
      h2 { text-align: center; }
      input[type=text], input[type=number] { width: 100%; padding: 10px; margin: 8px 0; border: 1px solid #ccc; border-radius: 4px; }
      input[type=submit] { width: 100%; background-color: #007bff; color: white; padding: 10px; border: none; border-radius: 4px; cursor: pointer; }
      input[type=submit]:hover { background-color: #0056b3; }
      .message { text-align: center; margin-top: 10px; color: green; }
    </style>
</head>
<body>
  <div class="container">
    <h2>주문 등록</h2>
    <form action="/order-app/order" method="post">
      <label for="userId">사용자 ID</label>
      <input type="text" id="userId" name="userId" placeholder="사용자 ID 입력" required />

      <label for="productName">상품명</label>
      <input type="text" id="productName" name="productName" placeholder="상품명 입력" required />

      <label for="amount">수량</label>
      <input type="number" id="amount" name="amount" placeholder="수량 입력" required />

      <input type="submit" value="주문하기" />
    </form>
    <div class="message">${message}</div>
  </div>
</body>
</html>
