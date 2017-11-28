function modify_css (event) {
  event.preventDefault();
  selector = $("input[name='selector']").val();
  property = $("input[name='property']").val();
  value = $("input[name='value']").val();
  $(selector).css(property , value);

}