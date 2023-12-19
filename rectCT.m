% Function to compute rectangle function
% rect(t) = uCT(t+0.5)-uCT(t-0.5)
% Written By 65010666, Pongpada Anoma
function y = rectCT(t)
    y = uCT(t+0.5)-uCT(t-0.5);