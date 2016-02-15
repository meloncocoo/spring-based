(function(document, window, $) {
	'use strict';

	$(document).ready(function() {
		Site.run();
	});
	// Example C3 Donut
	// ----------------
	(function() {
		var donut_chart = c3
				.generate({
					bindto : '#exampleC3Donut',
					size: {
						height: 200
					},
					data : {
						columns : [ [ 'data1', 120 ], [ 'data2', 40 ],
								[ 'data3', 80 ] ],
						type : 'donut'
					},
					color : {
						pattern : [ $.colors("green", 500),
								$.colors("grey", 300), $.colors("red", 400) ]
					},
					legend : {
						position : 'right'
					},
					donut : {
						label : {
							show : false
						},
						width : 30,
						title : "2015年期间汇总表",
						onclick : function(d, i) {
						},
						onmouseover : function(d, i) {
						},
						onmouseout : function(d, i) {
						}
					}
				});
	})();

	(function() {
		var chart = c3.generate({
			bindto : '#chart',
			data : {
				columns : [ [ 'data1', 30, 200, 100, 400, 150, 250 ],
						[ 'data2', 50, 20, 10, 40, 15, 25 ] ],
				axes : {
					data2 : 'y2'
				},
				types : {
					data2 : 'bar' // ADD
				}
			},
			axis : {
				y : {
					label : {
						text : 'Y Label',
						position : 'outer-middle'
					}
				},
				y2 : {
					show : true,
					label : {
						text : 'Y2 Label',
						position : 'outer-middle'
					}
				}
			}
		});
	})();
})(document, window, $);
