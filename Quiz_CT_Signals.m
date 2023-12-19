% Quiz CT Signals
% Written By 65010666, Pongpada Anoma
clc, clearvars, close all

t = -10:2e-2:10;
y_val = y_fn(t);
plot(t, y_val); grid on;
title('Function CT y(t) = g(2t - 4)');
xlabel('t');
ylabel('y(t)');

% Function Definitions
function y = y_main(t)
    y = rectCT(t+1) - rectCT(t) + rectCT(t-1);
end

function y = y_fn(t)
    y = y_main(2 * t - 4);
end
