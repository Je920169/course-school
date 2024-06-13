<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"  href="/css/courselist.css">
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
	
	
	
	
	<h2 align="center">課程列表</h2>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
    
    
    
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
                    <td>${course.remark}
                
                       
                        <a class="button-success pure-button" href="${pageContext.request.contextPath}/chooseRecords/edit/${chooseRecord.id}">編輯</a>
                        <a class="button-error pure-button" href="${pageContext.request.contextPath}/chooseRecords/delete/${chooseRecord.id}">刪除</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    
    
    