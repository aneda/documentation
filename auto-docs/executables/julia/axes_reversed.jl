# Learn about API authentication here: {{BASE_URL}}/julia/getting-started
# Find your api_key here: {{BASE_URL}}/settings/api

using Plotly

Plotly.signin("TestBot", "r1neazxo9w")
data = [
  [
    "x" => [1, 2], 
    "y" => [1, 2], 
    "type" => "scatter"
  ]
]
layout = ["xaxis" => ["autorange" => "reversed"]]
response = Plotly.plot(data, ["layout" => layout, "filename" => "axes-reversed", "fileopt" => "overwrite"])
plot_url = response["url"]
