<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-12 details">

  <div class="row">
    <div class="col-md-4">
      <img ng-src="{{driver.r.fbId > 0  && 'https://graph.facebook.com/'+driver.r.fbId+'/picture?type=large' || '/resources/images/profile_icon.png'}}"
           class="img-responsive img-thumbnail img-profile-thumbnail"/>
    </div>
    <div class="col-md-8">
      <dl class="dl-horizontal">

        <dt ng-show="driver.phone">Phone</dt>
        <dd ng-show="driver.phone">{{driver.phone}}</dd>

        <dt ng-show="driver.firstName">First Name</dt>
        <dd ng-show="driver.firstName">{{driver.firstName}}</dd>

        <dt ng-show="driver.lastName">Last Name</dt>
        <dd ng-show="driver.lastName">{{driver.lastName}}</dd>

        <dt ng-show="driver.fbLink || driver.twLink || driver.goLink">Social links</dt>
        <dd ng-show="driver.fbLink || driver.twLink || driver.goLink">
          <a ng-show="driver.fbLink" target="_blank" href="{{driver.fbLink}}"><i class="fa fa-facebook fa-icon"></i></a>
          <a ng-show="driver.twLink" target="_blank" href="{{driver.twLink}}"><i class="fa fa-twitter fa-icon"></i></a>
          <a ng-show="driver.goLink" target="_blank" href="{{driver.goLink}}"><i class="fa fa-google-plus fa-icon"></i></a>
        </dd>

      </dl>


      <dl class="dl-horizontal">

        <dt>From</dt>
        <dd>{{driver.r.startPoint}}</dd>

        <dt>To</dt>
        <dd>{{driver.r.endPoint}}</dd>

        <dt>Date</dt>
        <dd>{{driver.r.date}}</dd>

        <dt>Start Tiem</dt>
        <dd>{{driver.r.startTime}}</dd>

      </dl>
    </div>
  </div>


</div>
