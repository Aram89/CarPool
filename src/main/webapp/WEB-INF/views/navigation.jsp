<%@ page import="org.proffart.carpool.service.UserServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% Boolean isLogged = UserServiceImpl.isLogged(); %>
<div class="navbar navbar-default navbar-fixed-top" id="nav-height" role="navigation">
  <div class="container">
    <div class="welcome-page">
      <div class="navbar-header page-scroll">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="page-scroll" href="<c:url value="/"/>#intro" >
          <img alt="join as" src="/resources/img/logo-main.png" style="width: 50px;"/>
        </a>
      </div>


      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="hidden">
            <a class="page-scroll" href="<c:url value="/"/>#intro"></a>
          </li>
          <li>
            <a class="page-scroll" href="<c:url value="/"/>#find">Find</a>
          </li>
          <li>
            <a class="page-scroll" href="<c:url value="/"/>#about">About</a>
          </li>
          <% if(isLogged) { %>
          <li>
            <a class="page-scroll" href="<c:url value="/map"/>">Map</a>
          </li>
          <% } %>
          <li>
            <a class="page-scroll" href="<c:url value="/"/>#contact">Contact</a>
          </li>
        </ul>



        <ul class="nav navbar-nav navbar-right ">
          <li><a href="#"><i class="fa fa-facebook fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-google-plus fa-icon"></i></a></li>
        </ul>

        <% if(!isLogged) { %>
        <form name="loginForm" class="navbar-form navbar-right" ng-controller="loginController" ng-submit="login()">
          <div class="form-group">
            <input class="form-control input-color" type="text" ng-model="user.userName" name="login" placeholder="Login" required/>
          </div>
          <div class="form-group">
            <input class="form-control input-color" type="password" ng-model="user.password" name="password" placeholder="Password" required/>
          </div>
          <button type="submit" class="btn btn-default input-color style-btn" ng-disabled="loginForm.$invalid || loading">Login</button>
        </form>
        <% } else { %>

        <% } %>
      </div>

    </div>
  </div>
</div>