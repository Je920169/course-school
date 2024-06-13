<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"  href="/css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>學生選課系統</title>
</head>
<body>
    <header>
        <img src="/image/NJU.png" alt="">
        <p>Course Enrollment System</p>
      </header>
      
	 <nav>
        <a href="${pageContext.request.contextPath}/index" class="active">首頁</a>
        <a href="${pageContext.request.contextPath}/index/courselist"  class="active">課程列表</a>
        <a href="${pageContext.request.contextPath}/index/chooseRecords"  class="active">已選課程</a>
        <a href="${pageContext.request.contextPath}/index/curriculum" class="active">課表</a>
        <a href="${pageContext.request.contextPath}/index/signout" class="active">登出</a>
    </nav>
	
	
	<h1 align="center">個人資訊</h1>
	
	
	<table align="center" class="pure-table pure-table-bordered" border="1">
        <thead>
            <tr>
                <th>學號</th>
                <th>學生姓名</th>
                <th>年級</th>
                <th>科系</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${ student }">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.grade}</td>
                    <td>${student.major}</td>
                  	
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
	
	<h2 align="center">公告</h2>
	
	<table align="center" class="pure-table pure-table-bordered" border="1">
	 <tbody>
	  <tr>
	  	<th>選課階段</th>
	  	<th>系統開放時間</th>
	  	<th>系統結束時間</th>
	  </tr>
	  
	  <tr>
		  <th>初選第一階段</th>
		  <th>2024/07/01 上午09:00</th>
		  <th>2024/07/10 上午09:00</th>
	  </tr>
	  
	  <tr>
	  	  <th>初選第二階段</th>
		  <th>2024/07/11 上午09:00</th>
		  <th>2024/07/20 上午09:00</th>
	  </tr>
	  
	 </tbody>
	</table>
	

</body>
</html>