$(document).ready(function() {
  $('#loader').hide();
});

function new_tweet(event){
  tweet = $("input[type='text']").val();
  $('#loader').show();
  event.preventDefault();
  $.ajax({
        type: "POST",
        url: "/:handle",
        data: {"user_tweet": tweet},                         
        success: function(data){               
            $("#loader").hide();
            $("p").first().prepend("<br>" + tweet + "<br>");
            alert("Su tweet fue satisfactorio"); 
        },
        error: function (response) {
          alert("Error"); 
          $("#loader").hide();
    }           
    });

//   $.post("/:handle", {"user_tweet": tweet}, function(result){
//         $("#tweet").prepend("<br>" + tweet + "<br>");
//     });
}