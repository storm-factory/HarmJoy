// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(document).ready(function(){  
  var mapLayer = MQ.mapLayer(); 
  var map = L.map('map', {
        layers: mapLayer,
        center: [ -34.62, -58.381623 ],
        zoom: 14,
        maxZoom: 17
    });
  
  L.control.layers({
        'Map': mapLayer,
        'Satellite': MQ.satelliteLayer(),
        'Hybrid': MQ.hybridLayer()
    }).addTo(map);  
});

$(function(){ $(document).foundation(); });
