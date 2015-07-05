jQuery(document).ready(function($){

    $.simpleWeather({
        location: 'Armenia, Yerevan',
        woeid: '',
        unit: 'c',
        success: function(weather) {
            html = '<h2><i class="icon-'+weather.code+'"></i> '+weather.temp+'&deg;'+weather.units.temp+'</h2>';

            $("#weather").html(html);
        },
        error: function(error) {
            $("#weather").html('<p>'+error+'</p>');
        }
    });

    $(window).scroll(function () {
        if( $(window).scrollTop() > 200 ) {
            //$('#header').css('display','block');
            $('#header').fadeIn();
        }else{
            $('#header').fadeOut();
            //$('#header').css('display','none');
        }
    });

});

