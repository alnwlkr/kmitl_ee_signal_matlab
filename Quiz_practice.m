% Quiz Practice
% Written By 65010666, Pongpada Anoma
clc, clearvars, close all

n = -2:12;
y_val = y_fn(n);
stem(n, y_val, "filled"); grid on;
title('Function DT y[n] = g[2n - 3]');
xlabel('n');
ylabel('y[n]');

% Function Definitions
function y = g(n)
    y = rampDT(n + 4);
end

function y = y_fn(n)
    y = g(2 * n - 3);
end
