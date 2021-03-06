signin({% if username %}'{{username}}'{% else %}'MATLABAPI'{% endif %}, {% if api_key %}'{{api_key}}'{% else %}'jzt0hr6tzv'{% endif %})

% Create some data
eb = 0:5;
SER = [0.1447 0.1112 0.0722 0.0438 0.0243 0.0122];
BER = [0.0753 0.0574 0.0370 0.0222 0.0122 0.0061];

% Create a y-axis semilog plot using the semilogy function
% Plot SER data in blue and BER data in red
fig = figure;
semilogy(eb, SER, 'bo-');
hold on;
semilogy(eb, BER, 'r^-');

% Turn on the grid
grid on;

% Add title and axis labels
title('Performance of Baseband QPSK');
xlabel('EbNo (dB)');
ylabel('SER and BER');

%--PLOTLY--%

% Strip MATLAB style by default!
response = fig2plotly(fig, 'filename', '>>>filename<<<');
plotly_url = response.url;
