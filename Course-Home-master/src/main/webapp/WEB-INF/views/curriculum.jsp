<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"  href="/css/curriculum.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
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
        <a href="${pageContext.request.contextPath}/auth/logout" class="active">登出</a>
    </nav>
