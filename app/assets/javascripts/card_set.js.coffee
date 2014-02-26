# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$(".card_set_element_link").click ->
		window.location = ('view?id='+$(this).attr("cardsetid"))

$ ->
	$(".card_set_element_selector").click ->
		$(".card_element_selector").each (index, element) =>
			if($(element).attr("lid") == $(this).attr("lid"))
				$(element).removeClass("selected")
		$(this).addClass("selected")
		$("#" + $(this).attr("target")).val($(this).attr("cardsetid"))