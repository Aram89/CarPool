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

    <div class="form-group">
      <label for="profile_fb_link" >Facebook link</label>
      <input class="form-control" id="profile_fb_link" type="text" ng-model="profile.fbLink"/>
    </div>

    <div class="form-group">
      <label for="profile_tw_link" >Twitter link</label>
      <input class="form-control" id="profile_tw_link" type="text" ng-model="profile.twLink"/>
    </div>

    <div class="form-group">
      <label for="profile_go_link" >Google plus link</label>
      <input class="form-control" id="profile_go_link" type="text" ng-model="profile.goLink"/>
    </div>

  </form>
</div>
