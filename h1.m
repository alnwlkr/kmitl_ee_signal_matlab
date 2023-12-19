% Function to compute h(t) function
% ramp(t) = 0 for t < 0
% ramp(t) =t  for t=> 0
% Written By 65010666, Pongpada Anoma
function y = h1(t)
    y = (2-2*t).*(t>=0 & t<=1.0);