<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-12">
  <form name="profileForm" novalidate>

    <div class="row">
      <div class="col-xs-12 col-md-6">
        <div class="form-group">
          <label for="profile_email" >Email</label>
          <input class="form-control" disabled id="profile_email" type="email" required value="{{profile.email}}"/>
        </div>
      </div>
      <div class="col-xs-12 col-md-6">
        <div class="form-group">
          <label for="profile_phone" >Phone</label>
          <input class="form-control" id="profile_phone" type="text" ng-model="profile.phone"/>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-12 col-md-6">
        <div class="form-group">
          <label for="profile_first_name" >First Name</label>
          <input class="form-control" id="profile_first_name" type="text" ng-model="profile.firstName"/>
        </div>
      </div>
      <div class="col-xs-12 col-md-6">
        <div class="form-group">
          <label for="profile_last_name" >Last Name</label>
          <input class="form-control" id="profile_last_name" type="text" ng-model="profile.lastName"/>
        </div>
      </div>
    </div>

    <div class="form-group center-block">
      <button ng-hide="profile.fbLink" class="btn btn-default" type="button" ng-click="connectWithFacebook()">
        <i class="fa fa-facebook"></i>
        Connect With Facebook
      </button>
      <div ng-show="profile.fbLink">
        <a href="{{profile.fbLink}}" target="_blank" data-toggle="tooltip" title="Facebook Page">
        <img ng-src="https://graph.facebook.com/{{profile.fbId}}/picture?type=small"
             class="img-thumbnail">
        </a>
        <a href="#" ng-click="removeFbConnection()" class="btn btn-link"> Delete </a>
      </div>
    </div>
<!--
    <div class="form-group">
      <label for="profile_tw_link" >Twitter link</label>
      <input class="form-control" id="profile_tw_link" type="text" ng-model="profile.twLink"/>
    </div>

    <div class="form-group">
      <label for="profile_go_link" >Google plus link</label>
      <input class="form-control" id="profile_go_link" type="text" ng-model="profile.goLink"/>
    </div>
-->
  </form>
</div>
