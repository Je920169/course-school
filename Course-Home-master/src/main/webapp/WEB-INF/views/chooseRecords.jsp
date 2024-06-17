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
        <a href="${pageContext.request.contextPath}/index/signout" class="active">登出</a>
    </nav>




    <h2 align="center" class="mt-4">選課紀錄列表</h2>
   
    
    <!-- 
    <a href="${pageContext.request.contextPath}/chooseRecords/new">新增選課紀錄</a>
     -->
   
    
    <table align="center" class="pure-table pure-table-bordered" border="1">
        <thead>
            <tr>
                <th>選課序號</th>
                <th>學生ID</th>
                <th>課程ID</th>
                <th>學分數</th>
                <th>選課時間</th>
                <th>狀態</th>
                <th>操作時間</th>
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
                    	<span class="date-text" data-chooseRecord-id="${ chooseRecord.id }">
                    	${ chooseRecord.choosetime }
                    	</span>
                    	<input class="date-input" type="date"
                    		   data-chooseRecord-id="${ chooseRecord.id }"
                    		   value="${chooseRecord.choosetime}" style="display: none;" />
        			</td>
                        
                     <td>   
                        <a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/chooseRecords/delete/${chooseRecord.id}">退選</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>