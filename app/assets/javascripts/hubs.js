$(document).ready(function(){


    var url = window.location.href.split('/');
    var urlIdParam = url[url.length - 1];

    var endpoint = "/api/v1/hubs/" + urlIdParam;

    $.get(endpoint, function(data){
        $.each(data.hub.social_ids, function(index, value) {
            if (/cdninstagram/.test(value)) {
                $('<div class="instaBox"><img id="image" src=' + value + '></div>').appendTo('#gutter');
            } else {
                $('<div class="tweetBox" />').text(value).appendTo('#gutter');
            }
         });
    });

});