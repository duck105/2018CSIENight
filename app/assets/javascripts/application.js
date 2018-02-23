// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require ckeditor/init
//= require turbolinks
//= require jquery
//= require jquery3
// = require popper
//= require bootstrap


// start of event.js
$(function(){
	var url = window.location.href;
	var activeTab = url.substring(url.indexOf("#") + 1);
	$(".tab-pane").removeClass("active in");
	$("#" + activeTab).addClass("active in");
	$('a[href="#'+ activeTab +'"]').tab('show');
});

$(function(){
	var hash = window.location.hash;
	hash && $('ul.nav a[href="' + hash + '"]').tab('show');

	$('.nav-tabs a').click(function (e) {
		$(this).tab('show');
		var scrollmem = $('body').scrollTop() || $('html').scrollTop();
		window.location.hash = this.hash;
		$('html,body').scrollTop(scrollmem);
	});
});
// end of event.js