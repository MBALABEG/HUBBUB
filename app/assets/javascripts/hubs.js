$(document).ready(function(){


    var url = window.location.href.split('/');
    var urlIdParam = url[url.length - 1];

    function shuffle(array) {
        var m = array.length, t, i;
        while (m) {
            i = Math.floor(Math.random() * m--);

            t = array[m];
            array[m] = array[i];
            array[i] = t;
        }
        return array;
    }

    var endpoint = "/api/v1/hubs/" + urlIdParam;

    $.get(endpoint, function(data){
        ids = shuffle(data.hub.social_ids);
        $.each(ids, function(index, value) {
            if (/cdninstagram/.test(value)) {
                $('<div class="instaBox"><img id="image" src=' + value + '></div>').appendTo('#gutter');
            } else {
                $('<div class="tweetBox" />').text(value).appendTo('#gutter');
            }
         });
    });

});