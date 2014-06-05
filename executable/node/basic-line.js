var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var trace1 = {
  x: [1, 2, 3, 4], 
  y: [10, 15, 13, 17], 
  type: "scatter"
};
var trace2 = {
  x: [1, 2, 3, 4], 
  y: [16, 5, 11, 9], 
  type: "scatter"
};
var data = [trace1, trace2];

plotly.plot(data, function (err, msg) {
    console.log(msg);
});