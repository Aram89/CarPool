<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="row">
  <div class="col-xs-6 col-md-3"><strong> Model </strong></div>
  <div class="col-xs-6 col-md-3"><strong> Number </strong></div>
  <div class="col-xs-10 col-md-4"><strong> Description </strong></div>
  <div class="col-xs-2 col-md-2">
    <button type="button" class="btn btn-success btn-sm" ng-click="addNewCar()">
      <i class="fa fa-plus"></i>
    </button>
  </div>
</div>

<div class="row" ng-repeat="car in cars" style="margin-top: 7px; margin-bottom: 7px;">
  <div class="col-xs-6 col-md-3">
    <span ng-hide="car.editable" ng-bind="car.model"></span>
    <input type="text" class="form-control" ng-model="car.model" ng-show="car.editable">
  </div>
  <div class="col-xs-6 col-md-3">
    <span ng-hide="car.editable" ng-bind="car.number"></span>
    <input type="text" class="form-control" ng-model="car.number" ng-show="car.editable">
  </div>
  <div class="col-xs-10 col-md-4">
    <span ng-hide="car.editable" ng-bind="car.description"></span>
    <textarea ng-model="car.description" class="form-control" rows="1" ng-show="car.editable"></textarea>
  </div>
  <div class="col-xs-2 col-md-2">
    <button type="button" class="btn btn-primary btn-xs" ng-hide="car.editable" ng-click="editCar(car)">
      <i class="fa fa-edit"></i>
    </button>
    <button type="button" class="btn btn-danger btn-xs" ng-hide="car.editable" ng-click="deleteCar(car)">
      <i class="fa fa-trash"></i>
    </button>
    <button type="button" class="btn btn-success btn-xs" ng-show="car.editable" ng-click="saveCar(car)"
            ng-disabled="!car.model && !car.number && !car.description">
      <i class="fa fa-check"></i>
    </button>
    <button type="button" class="btn btn-warning btn-xs" ng-show="car.editable" ng-click="cancelEdit(car)">
      <i class="fa fa-times"></i>
    </button>
  </div>
</div>
