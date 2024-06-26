<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
	 <link rel="stylesheet"  href="/css/chooseRecords.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <title>選課紀錄列表</title>
     
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
        <a href="${pageContext.request.contextPath}/auth/logout" class="active">登出</a>
    </nav>

	<div class="welcome my-3 text-center">
    	<h1 class="mt-4">選課紀錄列表</h1>
		<p>Welcome, ${user.name}!</p>
	</div>


   
 
    
    <table align="center" class="pure-table pure-table-bordered" border="1">
        <thead>
            <tr>
                <th>選課序號</th>
                <th>學生ID</th>
                <th>課程ID</th>
                <th>學分數</th>
                <th>選課時間</th>
                <th>狀態</th>
                <th>動作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="chooseRecord" items="${ chooseRecordsDtos }">
                <tr>
                    <td>${chooseRecord.id}</td>
                    <td>${chooseRecord.studentid}</td>
                    <td>${chooseRecord.courseid}</td>
                    <td>${chooseRecord.credits}</td>
                  	<td>${chooseRecord.choosetime}</td>
                    <td>${chooseRecord.action}</td>
                    <td>   
                         <form action="${pageContext.request.contextPath}/index/chooseRecords/delete/${chooseRecord.id}" method="POST" style="display:inline;">
                            <input type="hidden" name="_method" value="delete"/>
                            <button type="submit" class="btn btn-outline-danger">退選</button>
                        </form>
                   </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>