/**
 * jQuery DOB Picker
 * Website: https://github.com/tyea/dobpicker
 * Version: 1.0
 * Author: Tom Yeadon
 * License: BSD 3-Clause
 */

jQuery.extend({

	dobPicker: function(params) {

		// set the defaults
		if (typeof(params.dayDefault)==='undefined') params.dayDefault = 'Day';
		if (typeof(params.monthDefault)==='undefined') params.monthDefault = 'Month';
		if (typeof(params.yearDefault)==='undefined') params.yearDefault = 'Year';
		if (typeof(params.minimumAge)==='undefined') params.minimumAge = 12;
		if (typeof(params.maximumAge)==='undefined') params.maximumAge = 80;

		// set the default messages
		$(params.daySelector).append('<option value="">' + params.dayDefault + '</option>');
		$(params.monthSelector).append('<option value="">' + params.monthDefault + '</option>');
		$(params.yearSelector).append('<option value="">' + params.yearDefault + '</option>');

		// populate the day select
		for (i = 1; i <= 31; i++) {
			val = i;
			$(params.daySelector).append('<option value="' + val + '">' + i + '</option>');
			if (parseInt($(params.daySelector).text()) == val){
				$(params.daySelector).append('<option value="' + val + '" selected>' + i + '</option>');
			}
		}

		// populate the month select
		var months = [
			"Enero",
			"Febrero",
			"Marzo",
			"Abril",
			"Mayo",
			"Junio",
			"Julio",
			"Agosto",
			"Septiembre",
			"Octubre",
			"Noviembre",
			"Diciembre"
		];

		for (i = 1; i <= 12; i++) {
			var val = i;
			$(params.monthSelector).append('<option value="' + val + '">' + months[i - 1] + '</option>');
			if (parseInt($(params.monthSelector).text()) == val){
				$(params.monthSelector).append('<option value="' + val + '" selected>' + months[i - 1] + '</option>');
			}
		}

		// populate the year select
		var date = new Date();
		var year = date.getFullYear(); //2017
		var start = year - params.minimumAge; //2017-0
		var count = start - params.maximumAge;//2017-100

		for (i = start; i >= count; i--) {
			$(params.yearSelector).append('<option value="' + i + '">' +  i  + '</option>');
			if (parseInt($(params.yearSelector).text()) == i){
				$(params.yearSelector).append('<option value="' + i + '" selected>' + i + '</option>');
			}
		}

		// do the logic for the day select
		$(params.daySelector).change(function() {

			$(params.monthSelector)[0].selectedIndex = 0;
			$(params.yearSelector)[0].selectedIndex = 0;
			$(params.yearSelector + ' option').removeAttr('disabled');

			if ($(params.daySelector).val() >= 1 && $(params.daySelector).val() <= 29) {

				$(params.monthSelector + ' option').removeAttr('disabled');

			} else if ($(params.daySelector).val() == 30) {

				$(params.monthSelector + ' option').removeAttr('disabled');
				$(params.monthSelector + ' option[value="02"]').attr('disabled', 'disabled');

			} else if($(params.daySelector).val() == 31) {

				$(params.monthSelector + ' option').removeAttr('disabled');
				$(params.monthSelector + ' option[value="02"]').attr('disabled', 'disabled');
				$(params.monthSelector + ' option[value="04"]').attr('disabled', 'disabled');
				$(params.monthSelector + ' option[value="06"]').attr('disabled', 'disabled');
				$(params.monthSelector + ' option[value="09"]').attr('disabled', 'disabled');
				$(params.monthSelector + ' option[value="11"]').attr('disabled', 'disabled');

			}

		});

		// do the logic for the month select
		$(params.monthSelector).change(function() {

			$(params.yearSelector)[0].selectedIndex = 0;
			$(params.yearSelector + ' option').removeAttr('disabled');

			if ($(params.daySelector).val() == 29 && $(params.monthSelector).val() == '02') {

				$(params.yearSelector + ' option').each(function(index) {
					if (index !== 0) {
						var year = $(this).attr('value');
						var leap = !((year % 4) || (!(year % 100) && (year % 400)));
						if (leap === false) {
							$(this).attr('disabled', 'disabled');
						}
					}
				});

			}

		});

	}

});
