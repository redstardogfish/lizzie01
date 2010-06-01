// -----------------------------------------------------------------------------------
// 
// This page coded by Scott Upton
// http://www.uptonic.com | http://www.couloir.org
//
// This work is licensed under a Creative Commons License
// Attribution-ShareAlike 2.0
// http://creativecommons.org/licenses/by-sa/2.0/
//
// Associated frameworks copyright their respective owners
//
//
// REQUIRES: Mootools 1.1 or higher
//
// -----------------------------------------------------------------------------------
// --- version date: 06/10/2007 ------------------------------------------------------


/* MooPix Class
------------------------------------------------------------*/

var MooPix = new Class({
    initialize: function(type, format){
		// You must supply your own API key to use Flickr Services
		this.fApiKey		= '7b3c6c0985db950136bc4874a30ef4a5';
		
		// You'll probably want to leave these alone
		this.fBaseUrl		= 'http://www.flickr.com/services/';
		this.fType		= (!type)?'rest':type;
		this.fFormat		= (!format)?'json':format;
		this.fArgs		= {};
    },
	setFlickrUrl: function(args){
		// Be sure to pass api key and request format in arguments
		this.fArgs.api_key = this.fApiKey;
		this.fArgs.format = this.fFormat;
	
		// Combine args in this call with those in the object instance already
		Object.extend(this.fArgs, args);
		
		// Build final, signed URL
		this.fUrl = this.fBaseUrl+this.fType+'/?'+Object.toQueryString(this.fArgs);
		return this.fUrl;
	},
	callFlickrUrl: function(args){
		// Create script element and append to DOM
		var script = new Element('script');
		script.setProperties({type: 'text/javascript', src: this.setFlickrUrl(args)});
		script.injectInside($E('head'));
	}
});