suma = 0;


$( function() {
    // drag = $( "#lista" ).children().draggable(hello());
    $( "#lista" ).children().draggable({
  drag: function( event, ui ) {
    // $(this).append($(this).clone().one());
    //$(this).clone().append("<h1>rve</h1>");
  }

});
    $( "#cardSlots" ).droppable({
      drop: function( event, ui ) {
        val = ui.draggable.find("li").attr("value")
        suma += parseInt(val);
        $("#total_sum").text(suma);
      }
    });
  } );

