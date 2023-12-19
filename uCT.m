% Function to compute the value of unit step
% uCT(t) = 0 fot t < 0, uCT(t) = 1/2 for t=0 and
% uCT(t) = 1 fot t > 0
% Written By 65010666, Pongpada Anoma
function y = uCT(t)
    zero = (t==0); pos = (t > 0); y = zero/2 + pos;