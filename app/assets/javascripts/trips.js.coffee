# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#this finds the trips div for masonry
$ ->
  $('trips').imagesLoaded ->
    $('#trips').masonry
      itemSelector: '.box'
      isFitWidth: true
