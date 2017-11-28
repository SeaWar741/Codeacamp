var Board = function( selector ) {
  // Aqui denerá ir el código que tenga que ver con tu tablero 
  
  // Utiliza esta sintaxis para referirte al selector que representa al tablero.
  // De esta manera no dependerás tanto de tu HTML.  
  var $elem = $( selector );
  
  function initialize() {
    // Que debe de pasar cuando se crea un nuevo tablero?
  };

  initialize();
};

var PostIt = function() {
  // Aquí va el código relacionado con un post-it
};

$(document).ready(function() {
  // Esta es la fucnión que correrá cuando este listo el DOM 
  new Board('#board');
  $( ".post-it" ).draggable({
     
    });
});

function delete_post(event){
  event.preventDefault();
  console.log(this);
  $(this).parent().remove();
}