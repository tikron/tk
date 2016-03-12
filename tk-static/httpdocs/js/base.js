/**
 * TK base javascript. Copyright 2015 by Titus Kruse
 */

function TK(options) {

	var _root;
	var _cfg;
	var _text = {
			email: {address: 'mail@tituskruse.de', subject: 'Kontaktanfrage', body: 'Sehr%20geehrter%20Herr%20Kruse%2C'},
			address: {headline: 'Diese Website wird von {0} vertreten. Die Postanschrift lautet:'},
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
		_updateUI();
		_bindUIActions();
//		console.log(_cfg);
	}

	/**
	 * Substitute placeholders with string values. A placeholder consists of two braces including an index number like {0}. 
	 * 
	 * @param {String}
	 *          str The string containing the placeholders
	 * @param {Array}
	 *          arr The array of values to substitute
	 */
	this.substitute = function(str, arr) {
		var i, pattern, re, n = arr.length;
		for (i = 0; i < n; i++) {
			pattern = '\\{' + i + '\\}';
			re = new RegExp(pattern, 'g');
			str = str.replace(re, arr[i]);
		}
		return str;
	} 
	
	var _updateUI = function() {
		$('div.address').append(_getAddressHtml());
		$('a.email_link').attr('href', _getContactEmailLink());
		$('a.email_link').html(_getContactEmailText());
	}

	var _bindUIActions = function() {
		// "Go Up" scrolling button
		_bindGoUpButton();
	}
	
	var _bindGoUpButton = function() {
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
	var _getContactEmailLink = function() {
		return 'mailto:' + _text.email.address + '?subject=' + _text.email.subject + '&body=' + _text.email.body;
	}

	/**
	 * Returns the contact email address text.
	 * 
	 * @returns {String} The email address.
	 */
	var _getContactEmailText = function() {
		return _text.email.address;
	}

	/**
	 * Returns the site owner address.
	 * 
	 * @returns Postal address object.
	 */
	var _getPostalAddress = function() {
		return _text.postal;
	}

	/**
	 * Returnes the site owner info and address as HTML text.
	 * 
	 * @returns {String} The HTML code.
	 */
	var _getAddressHtml = function() {
		var pa = _getPostalAddress();
		var headline = tk.substitute(_text.address.headline, [pa.name]);
		return '<p>' + headline + '</p>' + '<address>'
				+ pa.name + '<br />' + pa.address + '<br />' + pa.city + '<br />'
				+ pa.country + '</address>';
	}

	/**
	 * Formats an URL input field value.
	 * 
	 * @param field
	 *          The input field.
	 */
	var _formatUrl = function(field) {
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
