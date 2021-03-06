import plotly.plotly as py
from plotly.graph_objs import *
py.sign_in('TestBot', 'r1neazxo9w')

data = py.get_figure("https://plot.ly/~AlexHP/68").get_data()
distance = [d['y'][0] for d in data]  # check out the data for yourself!

fig = Figure()
fig['data'] += [Histogram(y=distance, name="flyby distance", histnorm='probability')]
xaxis = XAxis(title="Probability for Flyby at this Distance")
yaxis = YAxis(title="Distance from Earth (Earth Radii)")
fig['layout'].update(title="data source: https://plot.ly/~AlexHP/68", xaxis=xaxis, yaxis=yaxis)

plot_url = py.plot(fig, filename="python-get-data")
