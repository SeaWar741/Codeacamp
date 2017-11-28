$(document).ready(function(){
  $("#add_comment_area").hide();
});
function new_comment (event) {
  $("#add_comment_area").show();
  $("#new_comment_button").hide();
}

function adding_new_comment(event){
  $("#add_comment_area").hide();
  $("#new_comment_button").show();
  event.preventDefault();
  user_comment = $("textarea[name='user_comment']").val();
  user_autor = $("input[name='user_autor']").val();
  $.post("/commented", {"comment": user_comment, "author": user_autor}, function(){});
  $("#comment_list").append("<li>" + user_comment + "<span class='author'>" + user_autor + "</span> </li>");
  $("#comment_list").append("<h3 id='success'>El comentario se creo exitosamente</h3>");
  $("#success").hide(2000);
}