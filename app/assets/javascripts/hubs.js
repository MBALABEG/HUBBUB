


$(document).ready(function(){

    var endpoint = "/api/v1/hubs/5";

    $.get(endpoint, function(data){
        $.each(data.hub.social_ids, function(index, value) {
            $('<div />', {
                'text': value
            }).appendTo('#gutter');
         });
    });
});