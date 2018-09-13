
/*---------------------------------CART FUNCTIONS--------------------------*/
function cart() {
	if ($('aside#cart').html().length > 0) {
		$('aside p.temp').remove();
		$('#cartTrigger').attr('src', 'images/cart_full.svg');
	} else {
		$('aside#cart').html('<p class="temp">Cart Empty</p>');
		$('#cartTrigger').attr('src', 'images/cart.svg');
	}
}
$('#cartTrigger').hover(function () {$(this).next().fadeToggle();});

/*---------------------------------REMOVE DUPS--------------------------*/
function duplicates() {
	$('article#modal table tbody tr td:nth-child(6)').filter(function () {
		if (($(this).text() ===
				 $(this).parent().next().find('td:nth-child(6)').text())
				&&
				($(this).parent().find('td:nth-child(8)').text() ===
				 $(this).parent().next().find('td:nth-child(8)').text())
				||
				($(this).text() === '')
			  )
		return true;
	}).parent().find('td:nth-child(3)').text('2')
		.parent().next().find('td').css('color', '#FFFFFF00');
}

$(document).ready(function () {
	var price = 0.00;
	$("input[type='checkbox']").prop('checked', false);
	/*--------------------------SET CHECKBOX IDs-----------------------------*/
	$('input').each(function () {
		$(this).attr('id', $(this).parent().parent().find('td:nth-child(4)').text()
															.replace(/\s/g, '').split(",")[0] +
											 $(this).parent().parent().find('td:nth-child(10)').text()
															.replace(/\s/g, ''));
	});

	$('#book1, #book2, #book3, #book4, #book5, #book6, #book7, #book8, #book9, button#viewAll').click(function () {
		$('article#modal').show();
		$('#interior').show();
	});
	$('#interior').click(function () {
		$(this).hide();
		$(this).parent().hide();
		$('article#modal table tbody tr').each(function () {$(this).show();});
	});

	/*-----------------------SORT MODALS TABLE CONTENTS-----------------------*/
	/*BOOK1 IS ROM*/
	$('#book1').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'ROM');
		}).parent().hide();
		duplicates();
	});
	/*BOOK2 IS THOR*/
	$('#book2').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'Thor');
		}).parent().hide();
		duplicates();
	});
	/*BOOK3 IS X-Men*/
	$('#book3').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'X-Men');
		}).parent().hide();
		duplicates();
	});
	/*BOOK4 IS Hulk*/
	$('#book4').click(function () {
		/*FIX THE NAME FROM THE DATABASE*/
		$('article#modal table tbody tr td:nth-child(4):contains(Hulk, the Incredible)').each(function () {
			$(this).text('the Incredible Hulk');
		});
		/*HIDE ALL OTHER ROWS*/
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'the Incredible Hulk');
		}).parent().hide();
		duplicates();
	});
	/*BOOK5 Spider Man*/
	$('#book5').click(function () {
		/*FIX THE NAME FROM THE DATABASE*/
		$('article#modal table tbody tr td:nth-child(4):contains(Spider Man, Peter Parker The Spectacular )').each(function () {
			$(this).text('Peter Parker The Spectacular Spider Man');
		});
		/*HIDE ALL OTHER ROWS*/
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'Peter Parker The Spectacular Spider Man');
		}).parent().hide();
		duplicates();
	});
	/*BOOK6 IS Silver Surfer*/
	$('#book6').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'Silver Surfer');
		}).parent().hide();
		duplicates();
	});
	/*BOOK7 IS Sable*/
	$('#book7').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'Sable');
		}).parent().hide();
		duplicates();
	});
	/*BOOK8 IS Green Arrow*/
	$('#book8').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'Green Arrow');
		}).parent().hide();
		duplicates();
	});
	/*BOOK9 IS Dreadstar*/
	$('#book9').click(function () {
		$('article#modal table tbody tr td:nth-child(4)').filter(function () {
			return ($(this).text() !== 'Dreadstar');
		}).parent().hide();
		duplicates();
	});

	/*----------------------------------- IF Annual---------------------------*/
	$('article#modal table tbody tr td:nth-child(2)').filter(function () {
		if ($(this).html() === 1) {
			$(this).parent().find('td:nth-child(6)').prepend('Annual #');
			$(this).html("");
		}
		if ($(this).html() === 0) {
			$(this).html("");
		}
	});

	/*----------------------SORTING FUNCTION -------------------------------*/
	$('th').each(function (col) {
		$(this).hover(
			function () { $(this).addClass('focus'); },
			function () { $(this).removeClass('focus'); }
		);
		$(this).click(function () {
			var sortOrder;
			if ($(this).is('.asc')) {
				$(this).removeClass('asc');
				$(this).addClass('desc selected');
				sortOrder = -1;
			}	else {
				$(this).addClass('asc selected');
				$(this).removeClass('desc');
				sortOrder = 1;
			}
			$(this).siblings().removeClass('asc selected');
			$(this).siblings().removeClass('desc selected');
			var arrData = $('table').find('tbody > tr:has(td)').get();
			arrData.sort(function (a, b) {
				var val1 = $(a).children('td').eq(col).text().toUpperCase(),
					val2 = $(b).children('td').eq(col).text().toUpperCase();

				if($.isNumeric(val1) && $.isNumeric(val2)) {
					return sortOrder === 1 ? val1-val2 : val2-val1;
				}	else {
					return (val1 < val2) ? -sortOrder : (val1 > val2) ? sortOrder : 0;
				}
			});
			$.each(arrData, function (index, row) {
				$('tbody').append(row);
			});
		});
	});

	/*------------------------CLEAR ALL CHECKBOXES--------------------------*/
	$('button#clear').click(function () {
		$("input").each(function () {
			if ($(this).prop('checked'))
				$(this).trigger('click');
		});
	});

	/*-----------------CONVERY DATE TO READABLE DATE--------------------------*/
	var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

	$('article#modal table tbody tr td:nth-child(7)').each(function () {
		var current_date = new Date($(this).text()),
			month_value = current_date.getMonth(),
			year_value = current_date.getFullYear();

		$(this).html(months[month_value] + " " + year_value);
	});

	/*---------------------------------CLICK FUNCTIONS--------------------------*/
	$('tr').click(function () {
		$(this).find('td:nth-child(1) input').trigger('click');
	});
	$('#buy').click(function () {
		$('article#buypage').show();
		$('#priceArea').html('<p>Esimated Price = ' + price + '</p>');
	});
	$('#formBack').click(function() {
		$('article#buypage').hide();
	});
	/*---------------------ADD BOOK TO SIDEBAR AND FORM-------------------------*/
	$("input[type='checkbox']").click(function () {
		var a = $(this).parent().parent().find('td:nth-child(4)').text(),
			b = $(this).parent().parent().find('td:nth-child(6)').text(),
			c = a + ' ' + b,
			d = a + b;

		if ($(this).prop('checked')) {
			$('aside').append('<p>' + c + '</p>');
			$("fieldset#formDisabled").append("<input type='text' value='" + d + "' disabled>");
			$("fieldset#formDisabled").append("<input type='hidden' name='Books[]' value='" + d + "'>");

			/*
			console.log("text", $(this).parent().parent().find('td:nth-child(9)').text());
			console.log("float", parseFloat($(this).parent().parent().find('td:nth-child(9)').text()));
			console.log("float", parseFloat($(this).parent().parent().find('td:nth-child(9)').text()) + 1.01);
			*/

			price = price + parseFloat($(this).parent().parent().find('td:nth-child(9)').text());

		} else {
			$('aside').find('p:contains(' + c + ')').remove();
			$("fieldset#formDisabled").find("p:contains(<input type='text' value='" + d + "' disabled>)").remove();
			$("fieldset#formDisabled").find("p:contains(<input type='hidden' name='Books[]' value='" + d + "'>)").remove();

			price -= parseFloat($(this).parent().parent().find('td:nth-child(9)').text());
		}
		cart();
	});
});
