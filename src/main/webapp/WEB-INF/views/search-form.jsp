<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div ng-controller="FindController" class="find-div">
  <h3 class="text-center headings">
    Find Car or Driver
  </h3>
  <hr class="hr">
  <div class="row">

    <div class="col-md-4 col-xs-12">
      <input id="searchFrom" type="text" class="form-control find-input" placeholder="From">
    </div>

    <div class="col-md-4 col-xs-12">
      <input id="searchTo" type="text" class="form-control find-input" placeholder="To">
    </div>

    <div class="col-md-3 col-xs-12">
      <div class="row">
        <div class="col-xs-12">

          <div class="form-group">
            <div id="searchDateBlock" class="input-group date">
              <input id="searchDate" type="text" class="form-control">
                  <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                  </span>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="col-md-1 col-xs-12">
      <button class="btn btn-block btn-default input-color style-btn">
        <i class="fa fa-search"></i> Find
      </button>
    </div>

  </div>


  <div class="content-wrap mCustomScrollbar" data-mcs-theme="dark">

    <div class="row section-row">
      <div class="col-xs-6 col-md-4">
        <img src="/resources/images/join_as.jpg" class="img-responsive img-thumbnail img-profile-thumbnail"/>
      </div>
      <div class="col-xs-6 col-md-4">
        <h3>Profile Name </h3>
        <ul>
          <li> from:</li>
          <li> to:</li>
          <li> date:</li>
        </ul>
      </div>

      <div class="col-xs-6 col-md-4" style="padding:25px">
        <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
        <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
        <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

        <div class="col-xs-8 col-md-10">
          <button type="button" class="btn btn-default input-color style-btn">Details</button>
        </div>
      </div>
    </div>

    <div class="row section-row">
      <div class="col-xs-6 col-md-4">
        <img src="/resources/images/join_as.jpg" class="img-responsive img-thumbnail img-profile-thumbnail"/>
      </div>
      <div class="col-xs-6 col-md-4">
        <h3>Profile Name </h3>
        <ul>
          <li> from:</li>
          <li> to:</li>
          <li> date:</li>
        </ul>
      </div>

      <div class="col-xs-6 col-md-4" style="padding:25px">
        <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
        <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
        <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

        <div class="col-xs-8 col-md-10">
          <button type="button" class="btn btn-default input-color style-btn">Details</button>
        </div>
      </div>
    </div>

    <div class="row section-row">
      <div class="col-xs-6 col-md-4">
        <img src="/resources/images/join_as.jpg" class="img-responsive img-thumbnail img-profile-thumbnail"/>
      </div>
      <div class="col-xs-6 col-md-4">
        <h3>Profile Name </h3>
        <ul>
          <li> from:</li>
          <li> to:</li>
          <li> date:</li>
        </ul>
      </div>

      <div class="col-xs-6 col-md-4" style="padding:25px">
        <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
        <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
        <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

        <div class="col-xs-8 col-md-10">
          <button type="button" class="btn btn-default input-color style-btn">Details</button>
        </div>
      </div>
    </div>

    <div class="row section-row">
      <div class="col-xs-6 col-md-4">
        <img src="/resources/images/join_as.jpg"
             class="img-responsive img-thumbnail img-profile-thumbnail"/>
      </div>
      <div class="col-xs-6 col-md-4">
        <h3>Profile Name </h3>
        <ul>
          <li> from:</li>
          <li> to:</li>
          <li> date:</li>
        </ul>
      </div>

      <div class="col-xs-6 col-md-4" style="padding:25px">
        <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
        <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
        <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

        <div class="col-xs-8 col-md-10">
          <button type="button" class="btn btn-default input-color style-btn">Details</button>
        </div>
      </div>
    </div>

    <div class="row section-row">
      <div class="col-xs-6 col-md-4">
        <img src="/resources/images/join_as.jpg"
             class="img-responsive img-thumbnail img-profile-thumbnail"/>
      </div>
      <div class="col-xs-6 col-md-4">
        <h3>Profile Name </h3>
        <ul>
          <li> from:</li>
          <li> to:</li>
          <li> date:</li>
        </ul>
      </div>

      <div class="col-xs-6 col-md-4" style="padding:25px">
        <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
        <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
        <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

        <div class="col-xs-8 col-md-10">
          <button type="button" class="btn btn-default input-color style-btn">Details</button>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/ng-template" id="search-user-block.html">
<%@include file="search-user-block.jsp" %>
</script>