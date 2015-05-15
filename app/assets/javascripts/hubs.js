


$(document).ready(function(){
    var endpoint = "/api/v1/hubs/13";

    $.get(endpoint, function(data){

    var gutter = $('#gutter');

    $.each(data, function(index, item){
        console.log(data.hub.social_ids);
        var box = $("<li class='box' />")
        .text(data.hub.social_ids)
        .appendTo(gutter);
    });


    });
});