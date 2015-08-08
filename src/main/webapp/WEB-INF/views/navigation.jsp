<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <img alt="join as" src="/resources/img/logo-main.png" style="width: 52px; margin-top: 4px;"/>
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
            <a class="page-scroll" href="<c:url value="/"/>#about">What We Do</a>
          </li>
          <li>
            <a class="page-scroll" href="<c:url value="/"/>#benefits">Benefits</a>
          </li>
          <li>
            <a class="page-scroll" href="<c:url value="/"/>#contact">Contact</a>
          </li>
        </ul>

        <!--Weather-->
        <div class="col-lg-2 col-xs-12 weather-block">
          <i class="fa fa-umbrella fa-icon"></i>
          <div id="weather"> <h2>&nbsp;</h2> </div>
        </div>

<!--
        <ul class="nav navbar-nav navbar-right ">
          <li><a href="https://www.facebook.com/Armeniacarpool?ref=aymt_homepage_panel"><i class="fa fa-facebook fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-google-plus fa-icon"></i></a></li>
        </ul>
-->
        <% if(!isLogged) { %>
        <form name="loginForm" method="post" class="navbar-form navbar-right" ng-controller="LoginController" ng-submit="login()">
          <div class="form-group">
            <input class="form-control input-color" type="text" ng-model="user.userName" name="login" placeholder="Login" required/>
          </div>
          <div class="form-group">
            <input class="form-control input-color" type="password" ng-model="user.password" name="password" placeholder="Password" required/>
          </div>
          <button type="submit" class="btn btn-default input-color style-btn" ng-disabled="loginForm.$invalid || loading"><i class="fa fa-sign-in"></i> Login</button>
        </form>
        <% } else { %>

        <ul class="nav navbar-nav navbar-right" ng-controller="LoginController">
          <li> <a href="#" ng-click="logout()"><i class="fa fa-sign-out"></i> Logout</a> </li>
        </ul>

        <ul id="rout_list" class="nav navbar-nav navbar-right routes" ng-cloak>
          <li ng-repeat="route in routes">
            <a href="#" ng-click="editRoute(route)" data-toggle="tooltip" data-placement="bottom" data-html="true" title="{{route.startPoint}}<br><br>{{route.endPoint}}"><i class="fa fa-road"></i></a>
          </li>
        </ul>
        <% } %>
      </div>

    </div>
  </div>
</div>