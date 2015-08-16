<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-xs-6 col-md-2">
  <img ng-src="{{result.fbId > 0  && 'https://graph.facebook.com/'+result.fbId+'/picture?type=large' || '/resources/images/profile_icon.png'}}"
       class="img-responsive img-thumbnail img-profile-thumbnail"/>
</div>
<div class="col-xs-6 col-md-6">
  <h3>{{result.profileName}}</h3>
  <ul>
    <li> <b>From</b>: {{result.startPoint}}</li>
    <li> <b>To</b>:   {{result.endPoint}}</li>
    <li> <b>Date</b>: {{result.date}}</li>
    <li> <b>Start Time</b>: {{result.startTime}}</li>
  </ul>
</div>

<div class="col-xs-6 col-md-4" style="padding:25px">
  <a ng-show="result.fbLink" target="_blank" href="{{result.fbLink}}"><i class="fa fa-facebook fa-icon"></i></a>
  <a ng-show="result.twLink" target="_blank" href="{{result.twLink}}"><i class="fa fa-twitter fa-icon"></i></a>
  <a ng-show="result.goLink" target="_blank" href="{{result.goLink}}"><i class="fa fa-google-plus fa-icon"></i></a>

  <div class="col-xs-8 col-md-10">
    <button type="button" class="btn btn-default input-color style-btn" ng-click="getUserPublicData(result.userId, result)">Details</button>
  </div>
</div>
