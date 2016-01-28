module.exports = function(grunt) {
	"use strict";
	
	return {
		css:		'<%= config.destination.css %>',
		js:			'<%= config.destination.js %>',
		skins:		'<%= config.destination.skins %>'
	}
}