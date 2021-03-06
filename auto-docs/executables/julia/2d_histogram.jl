# Learn about API authentication here: {{BASE_URL}}/julia/getting-started
# Find your api_key here: {{BASE_URL}}/settings/api

using Plotly

x = randn(500)
y = randn(500)+1

Plotly.signin("TestBot", "r1neazxo9w")
data = [
  [
    "x" => x, 
    "y" => y, 
    "type" => "histogram2d"
  ]
]
response = Plotly.plot(data, ["filename" => "2d-histogram", "fileopt" => "overwrite"])
plot_url = response["url"]
