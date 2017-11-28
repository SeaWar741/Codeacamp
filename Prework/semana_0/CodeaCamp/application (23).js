$(document).ready(function() {
  $("#abue").on("submit", function(event) {
    event.preventDefault();
    var str = $(this).serialize();
    url = $(this).attr("action");
    $.post(url, str, function(data) {
      alert(str);
      responseGrandma = '<p> Tu abuelita dice: ' + data + '</p>'
      $("#result").html(responseGrandma);
    });
   })
});