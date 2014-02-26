# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
	$(".basic_card_element_link").click ->
		window.location = ('view?id='+$(this).attr("basiccardid"))

$ ->
	$(".basic_card_element_selector").click ->
		$(".basic_card_element_selector").each (index, element) =>
			$(element).removeClass("selected")
		$(this).addClass("selected")
		$("#" + $(this).attr("target")).val($(this).attr("basiccardid"))
