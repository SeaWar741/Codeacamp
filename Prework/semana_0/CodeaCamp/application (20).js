var quiz_array = []; 
var question_array = [];
var choice_array = [];
var contador = 1

$(document).ready(function() {
  field = $("#div_question").children().clone();
  $("input[type='button']").on("click", function(event){

    user_attr = $(this).attr("id");
    if (user_attr == "btn_add") {
      button_add(event, field);
    };
  })
});

function quiz_event(event){
  event.preventDefault();
  quiz_name = $("#quiz_name").val();
  quiz_array.push(quiz_name);
  console.log(quiz_array);
  $("h1").append(quiz_name);
  $("#quiz_name").remove();
  $("#btn_quiz_name").remove();
}

function question_event(event){
  event.preventDefault();
  question_name = $("#question_name").val();
  question_array.push([contador,question_name]);
  console.log(question_array);
  $("#questions").append("<h3>" + question_name + "</h3>");
  $("#question_name").remove();
  $("#btn_question_name").remove();
}

function choice_event(event){
  event.preventDefault();
  choice_name = $("#choice_name").val();
  choice_array.push([contador,choice_name]);
  console.log(choice_array);
  $("#questions").append("<p>" + choice_name + "</p>");
}

function button_add(event, field){
  contador = contador + 1;
  event.preventDefault();
  $("#div_question").children().remove();
  $("#next_question").append(field);
}

function send_quiz_event(event){
  $.post("/created_quiz",
    {
      quiz_name: quiz_array,
      question_name: question_array, 
      choice_name: choice_array
    },
    function(data, status){

    });

}






