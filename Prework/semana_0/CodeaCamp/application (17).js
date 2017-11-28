//función que inicia el juego
function start_game(subOne, subTwo) {
  //variable que tiene un arreglo asignado con la posición de los dos submarinos a destruir
  var winner = randomCell();
  console.log(winner);
    $('.cell').on("click", function(evento){
      var playerClick = $(this).attr('id'); 
      var url = $('#play').attr('action');
      //¿qué debería ir aquí para conocer el número de submarinos destruidos o si el jugador es ganador?
      won(playerClick, winner)
      countForPlay += 1;
      //¿que debería ir aquí para mandar al controlador el conteo de submarinos destruidos y el
      //conteo de oportunidades por ronda?  
      if (nowWinner==2 || countForPlay==4) {
        if (nowWinner==2) {
          $.post("/games",{subs_destroyed: nowWinner,winner: true});
        }else{
          $.post("/games",{subs_destroyed: nowWinner,winner: false});
        }
      }
    });
    
  //función para conocer el número de submarinos destruidos o si el jugador es ganador
  function won(playerValue, subValue) {
    if (nowWinner >= 2){
      status = true;
      alert("Game Over");
    }
    if (countForPlay <= 2) {
      if (playerValue == subValue[0] || playerValue == subValue[1]) {
        $('#' + playerValue).css({"background-image": "url('/img/submarino.jpg')", "background-size": "190px 200px"});
        //variable que lleva el conteo de submarinos destruidos
        nowWinner += 1;
        score(nowWinner);
      }else{
        $('#' + playerValue).css({"background-image": "url('/img/equis.png')", "background-size": "190px 195px"});
      }
    }else{
      if (status == "false"){
        alert("Game Over");
      }
      if (countForPlay >= 2) {
        subValue.forEach(function(cel){
          $('#' + cel).css({"background-image": "url('/img/submarino.jpg')", "background-size": "190px 200px"});
        });
      }
    }
    //¿que debería ir aquí para conocer el número de submarinos destruidos y conocer ganador?
  }
}

//función que muestra el score del jugador
function score(value) {
  if (value <= 2){
    $('h3').text('Destroyed Submarines: ' + value );
  }
  if (value == 2){
    $('#win').text('WINNER!');
  }
}

//función que genera el tablero de juego
var resetInit = function() {
  $('h3').text("");
  $('#win').text('');
  $("#container").empty();
  $("#container").innerHTML = '';
  $("#container div").fadeOut();
  $('#container').css('background','#FE7E25');
  $('.cell').css('color', 'white');
  $('#container').css('background','#FFFFFF');
  //¿qué debería ir aquí para generar las celdas cada vez que se inicia juego?
  for (var i = 1; i <= 9; i++) {
    $("#container").append('<div class="cell"></div>');
    $(".cell:last").attr("id", "c"+i);
    $(".cell"+i).css({"width":"33%", "height":"33%", "background-color": "orange", "margin": "1px"});
  };
  $("#container").children().css("display", "inline-block");
}

//función que genera la posición de los dos submarinos
var randomCell = function() {
  //variables para asignar el valor de la posición de los submarinos
  var subOne = 0;
  var subTwo = 0;
  //¿qué debería ir aquí para generar las dos posiciones de los submarinos?
  rand_subOne = Math.random()*9;
  rand_subTwo = Math.random()*9;
  if (rand_subOne == rand_subTwo) {
    if (rand_subTwo == 9) {
      rand_subOne = 8;
    }else{
      rand_subOne = 9;
    }    
  }
  subOne = Math.ceil(rand_subOne);
  subTwo = Math.ceil(rand_subTwo);

  var valueSubOne = "c" + subOne;
  var valueSubTwo = "c" + subTwo;
  return [valueSubOne, valueSubTwo]
}


$(document).ready(function(){
  	$('#play').on("submit", function(evento){
  	  evento.preventDefault();
      var url = $('#play').attr('action');
      $('#win').text("");
      //variable que lleva el conteo de oportunidades por ronda
      countForPlay = 0;
      //variable que lleva el conteo de submarinos destruidos
      nowWinner = 0;
      //variable que termina el juego 'alert game over'
      status = false;
      //¿que debería ir aquí para comenzar el juego?
  	  resetInit();
      start_game(randomCell()[0],randomCell()[1]);
	  });
});