var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var trace1 = {
  x: ["giraffes", "orangutans", "monkeys"], 
  y: [20, 14, 23], 
  name: "SF Zoo", 
  type: "bar"
};
var trace2 = {
  x: ["giraffes", "orangutans", "monkeys"], 
  y: [12, 18, 29], 
  name: "LA Zoo", 
  type: "bar"
};
var data = [trace1, trace2];
var layout = {
  xaxis: {type: "category"}, 
  categories: ["giraffes", "orangutans", "monkeys"], 
  barmode: "stack"
};

plotly.plot(data, layout, function (err, msg) {
    console.log(msg);
});