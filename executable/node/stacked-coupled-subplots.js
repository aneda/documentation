var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var trace1 = {
  x: [0, 1, 2], 
  y: [10, 11, 12], 
  type: "scatter"
};
var trace2 = {
  x: [2, 3, 4], 
  y: [100, 110, 120], 
  yaxis: "y2", 
  type: "scatter"
};
var trace3 = {
  x: [3, 4, 5], 
  y: [1000, 1100, 1200], 
  yaxis: "y3", 
  type: "scatter"
};
var data = [trace1, trace2, trace3];
var layout = {
  yaxis: {domain: [0, 0.33]}, 
  legend: {traceorder: "reversed"}, 
  yaxis2: {domain: [0.33, 0.66]}, 
  yaxis3: {domain: [0.66, 1]}
};

plotly.plot(data, layout, function (err, msg) {
    console.log(msg);
});