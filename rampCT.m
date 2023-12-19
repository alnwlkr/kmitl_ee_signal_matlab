% Function to compute ramp function
% ramp(t) = 0 for t < 0
% ramp(t) =t  for t=> 0
% Written By 65010666, Pongpada Anoma
function y = rampCT(t)
    y = t.*(t>=0);