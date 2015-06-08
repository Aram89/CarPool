<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="page-scroll" href="#intro" >
          <img alt="join as" src="/resources/img/logo-main.png" style="width: 50px;"/>
        </a>
      </div>


      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="hidden">
            <a class="page-scroll" href="#intro"></a>
          </li>
          <li>
            <a class="page-scroll" href="#join">Join</a>
          </li>
          <li>
            <a class="page-scroll" href="#find">Find</a>
          </li>
          <li>
            <a class="page-scroll" href="#about">About</a>
          </li>
          <li>
            <a class="page-scroll" href="/map">Map</a>
          </li>
        </ul>



        <ul class="nav navbar-nav navbar-right ">
          <li><a href="#"><i class="fa fa-facebook fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-google-plus fa-icon"></i></a></li>
        </ul>
        <form class="navbar-form navbar-right" ng-controller="loginController" ng-submit="login">
          <div class="form-group">
            <input class="form-control input-color" type="text" ng-model="user.userName" placeholder="Login" />
          </div>
          <div class="form-group">
            <input class="form-control input-color" type="password" ng-model="user.password" placeholder="Password" />
          </div>
          <button type="submit" class="btn btn-default input-color">Login</button>
        </form>
      </div>

    </div>
  </div>
</div>