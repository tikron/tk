/**
 * TK base javascript. Copyright 2015 by Titus Kruse
 */

function TK(options) {

	var _root;
	var _cfg;
	var _text = {
			email: {address: 'mail@tituskruse.de', subject: 'Kontaktanfrage', body: 'Sehr%20geehrter%20Herr%20Kruse%2C'},
			postal : {name: 'Titus Kruse', address: 'Birnweg 2', city: '22335 Hamburg', country: 'Germany'}
	}

  this.config = $.extend({
  }, options);

	this.init = function() {
		_root = this;
		_cfg = this.config;
		_ui = {
				goup: $('#goup')
		};
		_bindUIActions();
//		console.log(_cfg);
	}

	_bindUIActions = function() {
		// "Go Up" scrolling button
		_bindGoUpButton();
	}
	
	_bindGoUpButton = function() {
		// Calculate percentage horizontal position relative to window dimensions. Unfortunally a percentage value is expected by the plugin.
		var windowWidth = $(window).innerWidth();
//		console.log(windowWidth);
		var containerWidth = $('#container').width();
//		console.log(containerWidth);
		var containerPadding = 60;
		var marginX = Math.max((100 - ((containerWidth - containerPadding * 2) * 100 / windowWidth)) / 2, 0);
		_ui.goup.goup({
			marginX : marginX,
			marginY : 10,
			scrolltime : 500
		});
	}

	/**
	 * Returns the contact email address link.
	 * 
	 * @returns {String} The email address link.
	 */
	this.getContactEmailLink = function() {
		return 'mailto:' + _text.email.address + '?subject=' + _text.email.subject + '&body=' + _text.email.body;
	}

	/**
	 * Returns the contact email address text.
	 * 
	 * @returns {String} The email address.
	 */
	this.getContactEmailText = function() {
		return _text.email.address;
	}

	/**
	 * Returns the site owner address.
	 * 
	 * @returns Postal address object.
	 */
	this.getPostalAddress = function() {
		return _text.postal;
	}

	/**
	 * Returnes the site owner info and address as HTML text.
	 * 
	 * @returns {String} The HTML code.
	 */
	this.getAddressHtml = function() {
		var pa = this.getPostalAddress();
		return '<p>' + 'Diese Website wird von ' + pa.name
				+ ' vertreten. Die Postanschrift lautet:' + '</p>' + '<address>'
				+ pa.name + '<br />' + pa.address + '<br />' + pa.city + '<br />'
				+ pa.country + '</address>';
	},

	/**
	 * Formats an URL input field value.
	 * 
	 * @param field
	 *          The input field.
	 */
	this.formatUrl = function(field) {
		var value = $(field).val();
		if (value.length > 0 && value.indexOf('http:') != 0
				&& value.indexOf('https:') != 0) {
			$(field).val('http://' + value);
		}
	}

};

var tk = new TK();

$(document).ready(function() {
	tk.init();
});
