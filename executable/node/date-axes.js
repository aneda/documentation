var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var data = [
  {
    x: ["2013-10-04 22:23:00", "2013-11-04 22:23:00", "2013-12-04 22:23:00"], 
    y: [1, 3, 6], 
    type: "scatter"
  }
];

plotly.plot(data, function (err, msg) {
    console.log(msg);
});