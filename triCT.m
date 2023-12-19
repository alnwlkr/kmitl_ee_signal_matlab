% Function to compute triangle function
% tri(t) = ramp(t+1)-2*ramp(t)+ramp(t-1)
% Written By 65010666, Pongpada Anoma
function y = triCT(t)
    y = rampCT(t+1)-2*rampCT(t)+rampCT(t-1);