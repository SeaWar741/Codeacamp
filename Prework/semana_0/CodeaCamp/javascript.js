$( document ).ready(function() {
});
// Class Torta
function Torta(type, time) {
  this.type = type,
  this.time = time
}
function oven(){
  $(".oven").css("visibility", "visible");
}
 $("#horno").on("submit", function(event) {
    event.preventDefault();
    type = $("input[name='type']").val();
    time = $("input[name='time']").val();
    torta = new Torta(type, time);
    microwave(torta.type, torta.time);
   });
function microwave(torta_type, user_time){
  cont = 1;
  var timer = setInterval(function(){
    x = torta_status(torta_type, cont);
      if (cont==user_time) {
        console.log("banderita");
        console.log(x);
        $("ol").append("<li>"+ torta_type + " - " + status + "</li>");
        clearInterval(timer);
      };
      cont += 1;
    },  1000);
}
function torta_status(torta_type, current_time){
  status = "";
  if (torta_type == "jamon") {
    if (current_time < 5) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 7) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 8) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 8) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;

  }else if (torta_type == "queso") {
    if (current_time < 7) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 9) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 10) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 10) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;

  }else if (torta_type == "pollo") {
    if (current_time < 9) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 11) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 12) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 12) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;
  }else if (torta_type == "bistec") {
    if (current_time < 8) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 10) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 11) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 11) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;

  }else if (torta_type == "huevo") {
    if (current_time < 13) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 14) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 15) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 15) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;

  }else if (torta_type == "salchicha") {
    if (current_time < 3) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 4) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 5) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 5) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;
  }else if (torta_type == "pierna") {
    if (current_time < 6) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 8) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 9) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 9) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;

  }else if (torta_type == "milanesa") {
    if (current_time < 10) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Crudo</h2>");
      status = "crudo"
    }else if (current_time <= 12) {
      $('#timer').css({"background-color": "orange"});
      $('#timer').html("<h2>Casi Listo</h2>");
      status = "casi listo"
    }else if (current_time == 13) {
      $('#timer').css({"background-color": "green"});
      $('#timer').html("<h2>Listo</h2>");
      status = "listo"
    }else if (current_time > 13) {
      $('#timer').css({"background-color": "red"});
      $('#timer').html("<h2>Quemado</h2>");
      status = "quemado"
    }
    return status;
  }
}
 