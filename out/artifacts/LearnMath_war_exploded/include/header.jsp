<%@ page import="libs.Utils" %><%--
  Created by IntelliJ IDEA.
  User: LeVu
  Date: 7/26/2020
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Header -->
<div id="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div id="logo-section">
            <a id="logo" href="#" style="text-decoration: none">
                <img alt="Logo" src="<%=Utils.fullPath("frontend/img/logo.png")%>" width="50" height="50">
                <span id="logo-text">LearnMath</span>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Đăng ký lớp học</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Tìm giáo trình</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Làm bài tập</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Làm bài thi</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Hướng dẫn
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Sử dụng cơ bản</a>
                        <a class="dropdown-item" href="#">Cách đăng ký bài học và tra cứu thông tin học tập</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Về chúng tôi</a>
                    </div>
                </li>
            </ul>
        </div>

        <div id="account-section">
            <a style="text-decoration: none" class="account-btn btn btn-link" id="sign-in"
               href="<%=Utils.fullPath("frontend/html/login.jsp")%>">Đăng nhập</a>
            <a style="text-decoration: none" class="account-btn btn btn-primary" id="sign-up" href="#">Đăng ký</a>
        </div>
    </nav>
</div>