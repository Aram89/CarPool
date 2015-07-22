<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<fieldset>


  <div class="form-group" ng-class="{ 'has-error' : regForm.userName.$invalid && !regForm.userName.$pristine }">
    <label class="col-md-4 control-label" for="userName">Login Name</label>

    <div class="col-md-6">
      <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input id="userName" name="userName" class="form-control" placeholder="Your login name"
               ng-model="user.userName"
               ng-remote-check="user/check-user-name/"
               required type="text">
      </div>
      <p class="help-block" ng-show="regForm.userName.$error.required && !regForm.userName.$pristine">Please
        enter your login</p>

      <p class="help-block" ng-show="regForm.userName.$error.remote && !regForm.userName.$pristine">This login
        already exist</p>
    </div>
  </div>


  <div class="form-group" ng-class="{ 'has-error' : regForm.email.$invalid && !regForm.email.$pristine }">
    <label class="col-md-4 control-label" for="email">Email</label>

    <div class="col-md-6">
      <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-at"></i></span>
        <input id="email" name="email" class="form-control" placeholder="Your Email"
               ng-model="user.email"
               ng-remote-check="user/check-email/"
               required type="email">
      </div>
      <p class="help-block" ng-show="regForm.email.$error.required && !regForm.email.$pristine">Please enter
        your email</p>

      <p class="help-block" ng-show="regForm.email.$error.email && !regForm.email.$pristine">Email is not a
        valid</p>

      <p class="help-block" ng-show="regForm.email.$error.remote && !regForm.email.$pristine">This email
        already exist</p>
    </div>
  </div>

  <div class="form-group" ng-class="{ 'has-error' : regForm.passwd.$invalid && !regForm.passwd.$pristine }">
    <label class="col-md-4 control-label" for="passwd">Password</label>

    <div class="col-md-6">
      <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        <input id="passwd" name="passwd" class="form-control" placeholder="Enter Password"
               ng-model="user.password" required type="password">
      </div>
      <p class="help-block" ng-show="regForm.passwd.$error.required && !regForm.passwd.$pristine">Please enter
        your password</p>
    </div>
  </div>


  <div class="form-group "
       ng-class="{ 'has-error' : regForm.confirmPassword.$invalid && !regForm.confirmPassword.$pristine }">
    <label class="col-md-4 control-label" for="confirmPassword">Password Again</label>

    <div class="col-md-6">
      <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        <input id="confirmPassword" name="confirmPassword" class="form-control"
               placeholder="Retype Password"
               ng-model="user.confirmPassword"
               ng-match="user.password"
               required type="password">
      </div>
      <p class="help-block"
         ng-show="regForm.confirmPassword.$error.required && !regForm.confirmPassword.$pristine">Please enter
        your verify password</p>

      <p class="help-block"
         ng-show="regForm.confirmPassword.$error.match && !regForm.confirmPassword.$pristine">Password
        confirmation doesnot match</p>
    </div>
  </div>

</fieldset>
