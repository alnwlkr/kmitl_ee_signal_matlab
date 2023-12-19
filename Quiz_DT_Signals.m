% Quiz DT Signals
% Written By 65010666, Pongpada Anoma
clc, clearvars, close all

n = -18:18;
y_val = y_fn(n);
stem(n, y_val, "filled"); grid on;
title('Function DT y[n] = g[2n - 4]');
xlabel('n');
ylabel('y[n]');

% Function Definitions
function y = g(n)
    y = combDT(4,n);
end

function y = y_fn(n)
    y = g(2 * n - 4);
end