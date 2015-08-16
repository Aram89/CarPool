<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
<!-- jquery and bootstrap scripts -->
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>

<script type="text/javascript" src="/resources/js/scrolling-nav.js"></script>
<script type="text/javascript" src="/resources/js/moment.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-datetimepicker.min.js"></script>

<script type="text/javascript" src="/resources/js/angular-sanitize.js"></script>
<script type="text/javascript" src="/resources/js/select.js"></script>
<script type="text/javascript" src="/resources/js/angular-animate.min.js"></script>
<!----->
<script type="text/javascript" src="/resources/js/angular-google-maps.min.js"></script>
<script type="text/javascript" src="/resources/js/ui-bootstrap-tpls-0.13.0.min.js"></script>
<script type="text/javascript" src="/resources/js/angular-toastr.min.js"></script>
<script type="text/javascript" src="/resources/js/angular-toastr.tpls.min.js"></script>
<!-- -->
<script type="text/javascript" src="/resources/js/ng/carpool.js"></script>
<!-- Weather widget-->
<script type="text/javascript" src="/resources/js/jquery.simpleWeather.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- -->
<script type="text/javascript" src="/resources/js/scripts.js"></script>
<script type="text/javascript" src="//connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function($){
    $('#modal-container-routs').on('shown.bs.modal', function () {
      window.dispatchEvent(new Event('resize'));
    });
  });

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66369974-1', 'auto');
  ga('send', 'pageview');

</script>
