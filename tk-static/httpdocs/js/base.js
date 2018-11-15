/**
 * TK base javascript. Copyright 2015 by Titus Kruse
 */

function TK(options) {

	var _root;
	var _cfg;
	var _text = {
			email: {address: 'job@tituskruse.de', subject: 'Kontaktanfrage', body: 'Sehr%20geehrter%20Herr%20Kruse%2C'},
			address: 'Birnweg 2, 22335 Hamburg, Germany',
			postal : {name: 'Titus Kruse', address: 'Birnweg 2', city: '22335 Hamburg', country: 'Germany'},
			phone: {label: '+49 40 59360711', number: '+494059360711'}
	}

  this.config = $.extend({
  }, options);

	this.init = function() {
		_root = this;
		_cfg = this.config;
		_ui = {};
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
		$('.owner-address').append(_text.address);
		$('a.owner-email').attr('href', _getContactEmailLink());
		$('a.owner-email').html(_getContactEmailText());
		$('a.owner-phone').attr('href', _getContactPhoneLink());
		$('a.owner-phone').html(_text.phone.label);
	}

	var _bindUIActions = function() {
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
	 * Returns the phone number link.
	 * 
	 * @returns {String} The phone number link.
	 */
	var _getContactPhoneLink = function() {
		return 'tel:' + _text.phone.number;
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
