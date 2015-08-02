<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-12">
  <dl class="dl-horizontal">

    <dt ng-show="driver.phone">Phone</dt>
    <dd ng-show="driver.phone">{{driver.phone}}</dd>

    <dt ng-show="driver.firstName">First Name</dt>
    <dd ng-show="driver.firstName">{{driver.firstName}}</dd>

    <dt ng-show="driver.lastName">Last Name</dt>
    <dd ng-show="driver.lastName">{{driver.lastName}}</dd>

    <dt ng-show="driver.fbLink || driver.twLink || driver.goLink">Social links</dt>
    <dd ng-show="driver.fbLink || driver.twLink || driver.goLink">
      <a ng-show="driver.fbLink" href="{{driver.fbLink}}"><i class="fa fa-facebook fa-icon"></i></a>
      <a ng-show="driver.twLink" href="{{driver.twLink}}"><i class="fa fa-twitter fa-icon"></i></a>
      <a ng-show="driver.goLink" href="{{driver.goLink}}"><i class="fa fa-google-plus fa-icon"></i></a>
    </dd>

  </dl>

</div>
