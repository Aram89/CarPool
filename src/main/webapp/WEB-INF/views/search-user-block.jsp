<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-xs-6 col-md-2">
  <img src="/resources/images/profile_icon.jpg"
       class="img-responsive img-thumbnail img-profile-thumbnail"/>
</div>
<div class="col-xs-6 col-md-6">
  <h3>{{result.profileName}}</h3>
  <ul>
    <li> From: {{result.startPoint}}</li>
    <li> To:   {{result.endPoint}}</li>
    <li> Date: {{result.date}}</li>
    <li> Start Tiem: {{result.startTime}}</li>
  </ul>
</div>

<div class="col-xs-6 col-md-4" style="padding:25px">
  <a ng-show="result.fbLink" href="{{result.fbLink}}"><i class="fa fa-facebook fa-icon"></i></a>
  <a ng-show="result.twLink" href="{{result.twLink}}"><i class="fa fa-twitter fa-icon"></i></a>
  <a ng-show="result.goLink" href="{{result.goLink}}"><i class="fa fa-google-plus fa-icon"></i></a>

  <div class="col-xs-8 col-md-10">
    <button type="button" class="btn btn-default input-color style-btn">Details</button>
  </div>
</div>
