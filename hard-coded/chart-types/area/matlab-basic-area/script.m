signin({% if username %}'{{username}}'{% else %}'MATLABAPI'{% endif %}, {% if api_key %}'{{api_key}}'{% else %}'jzt0hr6tzv'{% endif %})

y = [1, 5, 3;
     3, 2, 7;
     1, 5, 3;
     2, 6, 1];
figure
area(y)

response = fig2plotly();
plotly_url = response.url;