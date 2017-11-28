$(document).ready(function() {
  flag_1 = false;
  flag_2 = false;
  contador = 0 
  //Dibuja las celdas
  drawCells();
  //Click en jugar
	clickButton();
});



function clickButton(){
  $("#start_btn").on("click", function(){ 
    var start = new Date;
    intervalo = setInterval(function() {
      counter = Math.round((new Date - start) / 1000)
      if (counter == 1) {
        if (contador > 0) {
          console.log(contador);
          $("#player1").nextAll().empty();
          //$("#tablero").load('././app/views/index.erb', function(){
            drawCells();
          //});
          contador += 1
          $('#counter_start').text(3);
        }else{
          contador += 1
        $('#counter_start').text(3);
        };
      }else if (counter == 2) {
        $('#counter_start').text(2); 
      }else if (counter == 3) {
        $('#counter_start').text(1); 
      }else if (counter == 4) {
        $('#counter_start').text("Empieza!"); 
        $("#start_btn").text("Reiniciar");
        
        moveCoin("#Player1");
        moveCoin("#Player2");
      };
        
    }, 1000);
  })
}
//Funcion que dibuja las celdas
function drawCells(){
  for (var i = 1; i <= 100; i++) {
    $("tr").append("<td></td>").children();
    player_1 = $("#Player1").find("*");
    player_1.eq(i+1).attr("id", "celda"+i)
    player_2 = $("#Player2").find("*");
    player_2.eq(i+1).attr("id", "celda"+i)
  };
  $("#player1").next().addClass("active");
  $("#player2").next().addClass("active");
  $("#Player1").children().eq(90).addClass("lost_zone");
  $("#Player2").children().eq(90).addClass("lost_zone");
}
player_win = ""
//Mueve la moneda
function moveCoin(jugador){
  clearInterval(intervalo);
  player = $(jugador).find(".active");
  player.next().addClass("active");
  player.removeClass("active");
  position_p1 = $("#Player1").find(".active").index();
  position_p2 = $("#Player2").find(".active").index();
  if ($(player).attr("id") == "celda99" || flag_1 == true && jugador == "#Player1") {
    player_win = winner(position_p1, position_p2);
  }else if ($(player).attr("id") == "celda99" || flag_2 == true && jugador == "#Player2") {
    player_win = winner(position_p1, position_p2);
  }else{
    setTimeout(function(){ moveCoin(jugador) }, 21);
  };
};
function winner(position_p1, position_p2){
  if (position_p1 > 90 && position_p2 > 90) {
    return winPlayer("Ambos Perdieron");
  }else if (position_p1 < 90 && position_p1 > position_p2 ) {
    return winPlayer("Player1");
  }else if (position_p2 < 90 && position_p2 > position_p1 ) {
    return winPlayer("Player2");
  };
}
function winPlayer(text){
  $.post("/index/2", {"winner" : text}, setTimeout(function(){
    $("#winner_player").html(text);
  }, 100));
}
//Funcion que detecta el evento keyup
$(document).keyup(function(event){

  if (event.keyCode == 37 ) {
    flag_1 = true;
  }
  else if (event.keyCode == 39) {
    flag_2 = true;

  };
});
