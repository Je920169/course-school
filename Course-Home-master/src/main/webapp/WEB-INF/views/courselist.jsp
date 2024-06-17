<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"
    pageEncoding="UTF-8"%>
<!-- Tomcat 10.x JSTL -->    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"  href="/css/courselist.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
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
	
	
		
	<form class="pure-form mx-3" method="get" action="/index/search" >
		<fieldset>
		 <legend>查詢課程</legend>
				課程序號: <input class="my-2" type="number" id="courseid" name="courseid" />
				科目: <input class="my-2" type="text" id="subject" name="subject" />
				教師姓名: <input class="my-2" type="number" id="teacherid" name="teacherid" /><p />	
				必/選修: <input class="my-2" type="text" id="coursetype" name="coursetype" />	
				學分數:	<input class="my-2" type="number" id="credits" name="credits" />
				上課時間: <input class="my-2" type="text" id="time" name="time" /><p />	
			  <button type="submit" class="pure-button pure-button-primary">搜尋</button>
		</fieldset>
	</form>
		
		
		
	
	<h2 align="center">課程列表</h2>
 
    
 
    
    <table align="center" class="pure-table pure-table-bordered" border="1">
        <thead>
            <tr>
                <th>課程序號</th>
                <th>科目</th>
                <th>教師姓名</th>
                <th>必/選修</th>
                <th>上課地點</th>
                <th>上課時間</th>
                <th>人數上限</th>
                <th>學分數</th>
                <th>備註</th>
                <th>動作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="course" items="${ course }">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.subject}</td>
                    <td>${course.teacherId}</td>
                    <td>${course.courseType}</td>
                  	<td>${course.place}</td>
                    <td>${course.time}</td>
                    <td>${course.quota}</td>
                    <td>${course.credits}</td>
                    <td>${course.remark}</td>
                	
                	<td>
                        <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/chooseRecords/edit/${chooseRecord.id}">編輯</a>
                        <a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/chooseRecords/delete/${chooseRecord.id}">刪除</a>
                        <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/chooseRecords/delete/${chooseRecord.id}">加選</a>
                    </td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    
    
    