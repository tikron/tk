/**
 * TK base javascript. Copyright 2015 by Titus Kruse
 */

function TK(options) {

	var _root;
	var _cfg;
	var _text = {
			email: {address: 'job@tituskruse.de', subject: 'Kontaktanfrage', body: 'Sehr%20geehrter%20Herr%20Kruse%2C'},
			postal : {name: 'Titus Kruse', address: 'Birnweg 2', city: '22335 Hamburg', country: 'Germany'},
			phone: {label: '+49 157 58846573', number: '+4915758846573'}
	}

  this.config = $.extend({
  }, options);

	this.init = function() {
		_root = this;
		_cfg = this.config;
		_ui = {
				navbar: $('#navbarResponsive')
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
		$('.owner-address').append(_getAddressLine());
		$('.owner-email').attr('href', _getEmailLink()).html(_getEmailText());
		$('.owner-phone').attr('href', _getPhoneLink()).html(_text.phone.label);
		$('.imprint-address').append(_getAddressHtml());
	}

	var _bindUIActions = function() {
		// Hide nav bar on click manually when menu item points to location on this page
		_ui.navbar.on('click', function(e) {
			_ui.navbar.collapse('hide');
		});
	}

	/**
	 * Returns the contact email address link.
	 * 
	 * @returns {String} The email address link.
	 */
	var _getEmailLink = function() {
		return 'mailto:' + _text.email.address + '?subject=' + _text.email.subject + '&body=' + _text.email.body;
	}

	/**
	 * Returns the contact email address text.
	 * 
	 * @returns {String} The email address.
	 */
	var _getEmailText = function() {
		return _text.email.address;
	}

	/**
	 * Returns the phone number link.
	 * 
	 * @returns {String} The phone number link.
	 */
	var _getPhoneLink = function() {
		return 'tel:' + _text.phone.number;
	}

	/**
	 * Returns the site owner address.
	 * 
	 * @returns Postal address object.
	 */
	var _getAddressLine = function() {
		return  _text.postal.address + ', ' + _text.postal.city + ', ' + _text.postal.country;
	}

	/**
	 * Returnes the site owner info and address as HTML text.
	 * 
	 * @returns {String} The HTML code.
	 */
	var _getAddressHtml = function() {
		return _text.postal.name + '<br />' + _text.postal.address + '<br />' + _text.postal.city + '<br />' + _text.postal.country;
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
