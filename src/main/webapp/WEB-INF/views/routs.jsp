<%@ page contentType="text/html;charset=UTF-8" language="java" %>

	<div class="col-md-4">
		<form name="routeForm" ng-submit="saveRoute(routeForm)" novalidate>

			<div class="form-group">
				<label for="route_car" >Car</label>
				<ui-select id="route_car" ng-model="route.car" theme="select2" ng-disabled="disabled" style="width: 100%;">
					<ui-select-match placeholder="Select a car in the list">{{$select.selected.number}}</ui-select-match>
					<ui-select-choices repeat="car in cars">
						<div ng-bind-html="car.number | highlight: $select.search"></div>
						<small>
							model: {{car.model}}
							description: <span ng-bind-html="car.description | highlight: $select.search"></span>
						</small>
					</ui-select-choices>
				</ui-select>
			</div>

			<div class="form-group">
				<label for="from_location" >From</label>
				<input class="form-control" id="from_location" type="text" ng-model="route.startPoint" required/>
			</div>

			<div class="form-group">
				<label for="to_location" >To</label>
				<input class="form-control" id="to_location" type="text" ng-model="route.endPoint" required/>
			</div>


			<div class="form-group">

				<label>Start Time</label>

				<div class="row">
					<div class="col-xs-6">
						<timepicker
								id="startTime"
								ng-model="route.startTime"
								hour-step="1"
								minute-step="15"
								show-meridian="false">
						</timepicker>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label>
								<input type="checkbox" checked ng-model="route.periodic"> Periodic
							</label>
						</div>

							<button type="submit" class="btn btn-success" ng-disabled="routeForm.$invalid">Save </button>
							<button type="button" class="btn btn-danger" ng-show="route.id > 0"  ng-click="deleteRoute()">Delete</button>

					</div>
				</div>

			</div>

			<div class="form-group" ng-hide="route.periodic">
				<label>Start Day</label>
				<datepicker
						id="startDate"
						ng-model="route.startDate">
				</datepicker>
			</div>

			<div class="form-group" ng-show="route.periodic">
				<label>Week Days</label>

				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.monday"> Monday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.tuesday"> Tuesday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.wednesday"> Wednesday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.thursday"> Thursday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.friday"> Friday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.saturday"> Saturday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.sunday"> Sunday
					</label>
				</div>
			</div>

		</form>
	</div>

	<div class="col-md-8 angular-google-map-container popup-map">
		<ui-gmap-google-map
				id="map_canvas"
				center="map.center"
				zoom="map.zoom"
				draggable="true"
				options="map.options"
				control="map.control"
				events="map.events"
				>
		</ui-gmap-google-map>
	</div>