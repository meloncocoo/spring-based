(function(document, window, $) {
	'use strict';

	$(document).ready(function() {
		Site.run();
	});
	// Example C3 Donut
	// ----------------
	(function() {
		var options = {
			data : {
				type : 'gauge'
			},
			size : {
				height : 80
			},
			color : {
				pattern : [ '#f44336', '#ff9800', '#00bcd4', '#4caf50' ], // the three color levels for the percentage values.
				threshold : {
					values : [ 55, 60, 65, 70 ]
				}
			},
			tooltip: {
				show: false
			}
		};
		var chart1 = c3.generate($.extend(true, {
			bindto : '#profit01',
			data : {
				columns : [ [ 'data', 57.22 ] ]
			}
		}, options));
		var chart2 = c3.generate($.extend(true, {
			bindto : '#profit02',
			data : {
				columns : [ [ 'data', 54.17 ] ]
			}
		}, options));
		var chart3 = c3.generate($.extend(true, {
			bindto : '#profit03',
			data : {
				columns : [ [ 'data', 59.57 ] ]
			}
		}, options));
		var chart4 = c3.generate($.extend(true, {
			bindto : '#profit04',
			data : {
				columns : [ [ 'data', 62.32 ] ]
			}
		}, options));
		var chart5 = c3.generate($.extend(true, {
			bindto : '#profit05',
			data : {
				columns : [ [ 'data', 60.43 ] ]
			}
		}, options));
		var chart6 = c3.generate($.extend(true, {
			bindto : '#profit06',
			data : {
				columns : [ [ 'data', 66.07 ] ]
			}
		}, options));
	})();

//	(function() {
//		var chart = c3.generate({
//			bindto : '#chart',
//			data : {
//				columns : [ [ 'data1', 30, 200, 100, 400, 150, 250 ], [ 'data2', 50, 20, 10, 40, 15, 25 ] ],
//				axes : {
//					data2 : 'y2'
//				},
//				types : {
//					data2 : 'bar' // ADD
//				}
//			},
//			axis : {
//				y : {
//					label : {
//						text : 'Y Label',
//						position : 'outer-middle'
//					}
//				},
//				y2 : {
//					show : true,
//					label : {
//						text : 'Y2 Label',
//						position : 'outer-middle'
//					}
//				}
//			}
//		});
//	})();
	
	(function() {
		var chart = c3.generate({
			bindto: '#chart',
		    data: {
		        columns: [
		            ['2010', 300, 350, 300, 0, 0, 0],
		            ['2320', 130, 100, 140, 200, 150, 50]
		        ],
		        types: {
		            '2010': 'area',
		            '2320': 'area-spline'
		        }
		    }
		});
	})();
	
	(function() {
		var chart = c3.generate({
			bindto: '#donut01',
		    data: {
		        columns: [
		            ['001', 56272153.47],
		            ['002', 26843680.04],
		            ['003', 54227327.32]
		        ],
		        type : 'donut',
		        onclick: function (d, i) { console.log("onclick", d, i); },
		        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
		        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
		    },
		    donut: {
		        title: "Quantity"
		    }
		});
		var chart = c3.generate({
			bindto: '#donut02',
		    data: {
		        columns: [
		            ['001', 30],
		            ['002', 120],
		        ],
		        type : 'donut',
		        onclick: function (d, i) { console.log("onclick", d, i); },
		        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
		        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
		    },
		    donut: {
		        title: "Quantity"
		    }
		});
		var chart = c3.generate({
			bindto: '#donut03',
		    data: {
		        columns: [
		            ['001', 54227327.32],
		            ['002', 61363408.49],
		            ['003', 22045548.83]
		        ],
		        type : 'donut',
		        onclick: function (d, i) { console.log("onclick", d, i); },
		        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
		        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
		    },
		    donut: {
		        title: "Quantity"
		    }
		});
	})();
})(document, window, $);
