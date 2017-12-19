//= require jquery
//= require jquery_ujs
//= require bootstrap


$(document).ready(function() {

    $.ajax({
        type: 'GET'
        URL: './../json/apple_news.json'
        success: console.log("Success!!@")
    {
        console.log(result);
    }
    })


});