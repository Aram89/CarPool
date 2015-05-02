<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Bootstrap 3, from LayoutIt!</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
  <!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
  <!--script src="js/less-1.3.3.min.js"></script-->
  <!--append ‘#!watch’ to the browser URL, then refresh the page. -->
  
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/style.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="/resources/img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="/resources/img/favicon.png">
  
  <script type="text/javascript" src="/resources/js/jquery.min.js"></script>
  <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/resources/js/scripts.js"></script>
</head>

<body>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active">
              <a href="#">Link</a>
            </li>
            <li>
              <a href="#">Link</a>
            </li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">Action</a>
                </li>
                <li>
                  <a href="#">Another action</a>
                </li>
                <li>
                  <a href="#">Something else here</a>
                </li>
                <li class="divider">
                </li>
                <li>
                  <a href="#">Separated link</a>
                </li>
                <li class="divider">
                </li>
                <li>
                  <a href="#">One more separated link</a>
                </li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input class="form-control" type="text">
            </div> <button type="submit" class="btn btn-default">Submit</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="#">Link</a>
            </li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">Action</a>
                </li>
                <li>
                  <a href="#">Another action</a>
                </li>
                <li>
                  <a href="#">Something else here</a>
                </li>
                <li class="divider">
                </li>
                <li>
                  <a href="#">Separated link</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        
      </nav>
    </div>
  </div>
  <div class="row clearfix full-page">
    <div class="col-md-12 column">
      <div class="carousel slide" id="carousel-407436">
        <ol class="carousel-indicators">
          <li data-slide-to="0" data-target="#carousel-407436">
          </li>
          <li data-slide-to="1" data-target="#carousel-407436" class="active">
          </li>
          <li data-slide-to="2" data-target="#carousel-407436">
          </li>
        </ol>
        <div class="carousel-inner">
          <div class="item">
            <img alt="" src="http://lorempixel.com/1600/500/sports/1">
            <div class="carousel-caption">
              <h4>
                First Thumbnail label
              </h4>
              <p>
                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
              </p>
            </div>
          </div>
          <div class="item active">
            <img alt="" src="http://lorempixel.com/1600/500/sports/2">
            <div class="carousel-caption">
              <h4>
                Second Thumbnail label
              </h4>
              <p>
                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
              </p>
            </div>
          </div>
          <div class="item">
            <img alt="" src="http://lorempixel.com/1600/500/sports/3">
            <div class="carousel-caption">
              <h4>
                Third Thumbnail label
              </h4>
              <p>
                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
              </p>
            </div>
          </div>
        </div> <a class="left carousel-control" href="#carousel-407436" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-407436" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>
    </div>
  </div>
  <div class="row clearfix full-page">
    <div class="col-md-8 column">
      <h3 class="text-muted">
        h3. Lorem ipsum dolor sit amet.
      </h3>
      <p>
        Lorem ipsum dolor sit amet, <strong>consectetur adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst. Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi commodo sodales nisi id sodales. Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus, id bibendum diam velit et dui.</em> Proin massa magna, vulputate nec bibendum nec, posuere nec lacus. <small>Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et feugiat ipsum consequat eu.</small>
      </p>
    </div>
    <div class="col-md-4 column">
      <img alt="join as" src="/resources/images/join_as.jpg" style="width: 100%;">
      <div class="row clearfix join-buttons">
        <div class="col-xs-6 column text-right">
           <a class="btn btn-default" href="#modal-container-registration" role="button" data-toggle="modal"> Join Default</a>
        </div>
        <div class="col-xs-6 column text-left">
           <a class="btn btn-default" href="#modal-container-registration" role="button" data-toggle="modal"> Join Default</a>
        </div>
      </div>
    </div>
  </div>
  <div class="row clearfix full-page">
    <div class="col-md-12 column">
    </div>
  </div>
  <div class="row clearfix full-page">
    <div class="col-md-12 column">
      <h3 class="text-muted">
        h3. Lorem ipsum dolor sit amet.
      </h3>
      <div class="row clearfix">
        <div class="col-md-8 column">
          <p>
            Lorem ipsum dolor sit amet,
            <strong>consectetur adipiscing elit</strong>.
            Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst.
            Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor.
            Sed iaculis posuere diam ut cursus.
            <em>
              Morbi commodo sodales nisi id sodales.
              Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus,
              id bibendum diam velit et dui.
            </em>
            Proin massa magna, vulputate nec bibendum nec, posuere nec lacus.
            <small>
              Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa,
              et feugiat ipsum consequat eu.
            </small>
          </p>
        </div>
        <div class="col-md-4 column">
        </div>
      </div>
      <div class="row clearfix">
        <div class="col-md-4 column">
        </div>
        <div class="col-md-8 column">
          <p>
            Lorem ipsum dolor sit amet,
            <strong>consectetur adipiscing elit</strong>.
            Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst.
            Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor.
            Sed iaculis posuere diam ut cursus.
            <em>
            Morbi commodo sodales nisi id sodales.
            Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus,
            id bibendum diam velit et dui.
            </em>
            Proin massa magna, vulputate nec bibendum nec, posuere nec lacus.
            <small>
              Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa,
              et feugiat ipsum consequat eu.
            </small>
          </p>
        </div>
      </div>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column text-center">
      <span class="label label-primary">email@site.com</span>
      <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
      <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
      <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
    </div>
  </div>
</div>
<!-- modal -->

<div class="modal fade" id="modal-container-registration" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="myModalLabel">
                    Modal title
                </h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>

    </div>

</div>


<!-- angular scripts -->
<script type="text/javascript" src="/resources/js/angular.min.js"></script>
<script type="text/javascript" src="/resources/js/angular-google-maps.min.js"></script>

</body>
</html>
