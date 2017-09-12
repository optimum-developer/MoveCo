"use strict";

//Carts initialization
(function() {
	//Global Defaults
	Chart.defaults.global.defaultFontColor = '#444';
	Chart.defaults.global.defaultFontFamily = 'sans-serif';
	Chart.defaults.global.defaultFontSize = 11;
	//Yearly visitors
	var $canvasesYearlyVisitors = jQuery('.canvas-chart-line-yearly-visitors');
	if ($canvasesYearlyVisitors.length) {
		$canvasesYearlyVisitors.each(function(i){

			var MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
			var config = {
				type: 'line',
				data: {
					labels: MONTHS,
					datasets: [{
						label: "Unique Visitors",
						backgroundColor: 'rgba(244, 161, 21, 0.5)',
						borderColor: 'rgba(244, 161, 21, 0.5)',
                        borderWidth: '0',
                        tension: '0',
						//visitors per month
						data: [20, 50, 80, 100, 300, 500, 800, 1000, 900, 700, 1000, 1100],
						fill: true,
					}, 
					//put new dataset here if needed to show multiple datasets on one graph
					]
				},
				options: {
					responsive: true,
					title:{
						display:true,
						text:'Yearly Visitors'
					},
					tooltips: {
						mode: 'index',
						intersect: false,
					},
					hover: {
						mode: 'nearest',
						intersect: true
					},
					scales: {
						xAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Month'
							}
						}],
						yAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Visitors'
							}
						}]
					}
				}
			};


			var canvas = jQuery(this)[0].getContext("2d");;
						
			new Chart(canvas, config);
		});
	} //Yearly visitors

	//Monthly visitors
	var $canvasesMonthlyVisitors = jQuery('.canvas-chart-line-monthly-visitors');
	if ($canvasesMonthlyVisitors.length) {
		$canvasesMonthlyVisitors.each(function(i){

			var DAYS = [
				"01/01",

				"06/01",

				"11/01",

				"16/01",


				"21/01",

				"26/01",

				"31/01"
			 ];
			var config = {
				type: 'line',
				data: {
					labels: DAYS,
					datasets: [{
						label: "Unique Visitors",
						backgroundColor: 'rgba(236, 104, 46, 0.5)',
						borderColor: 'rgba(236, 104, 46, 0.5)',
                        borderWidth: '0',
                        tension: '0',
						//visitors per month
						data: [
							
							46,
							43,
							44,
							45,
                            43,
                            37,
                            50,

						],
						fill: true,
					}, 
					//put new dataset here if needed to show multiple datasets on one graph
					]
				},
				options: {
					responsive: true,
					title:{
						display:true,
						text:'Monthly Visitors'
					},
					tooltips: {
						mode: 'index',
						intersect: false,
					},
					hover: {
						mode: 'nearest',
						intersect: true
					},
					scales: {
						xAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Day'
							}
						}],
						yAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Visitors'
							}
						}]
					}
				}
			};


			var canvas = jQuery(this)[0].getContext("2d");;
						
			new Chart(canvas, config);
		});
	} //Yearly visitors
})();