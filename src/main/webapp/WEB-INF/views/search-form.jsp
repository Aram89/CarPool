<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div ng-controller="FindController" class="find-div relative">
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
      <button class="btn btn-block btn-default input-color style-btn" ng-click="doFind()">
        <i class="fa fa-search"></i> Find
      </button>
    </div>

  </div>


  <div class="content-wrap mCustomScrollbar" data-mcs-theme="dark">
    <div class="row section-row" ng-repeat="result in findResult"
      ng-include="'search-user-block.html'">
    </div>
  </div>
  <div class="loader-wrapper" ng-show="loading">
    <div class="loader"></div>
  </div>
</div>

<script type="text/ng-template" id="search-user-block.html">
<%@include file="search-user-block.jsp" %>
</script>