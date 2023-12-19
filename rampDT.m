% function y = rampDT(n)
% y = n , n>=0
% y = 0 , n<0
% y = NaN , n is not an integer
% Written By 65010666, Pongpada Anoma
function y = rampDT(n)
    pos = 1.0*(n>0); y=n.*pos;
    ss=find(round(n)~=n);
    y(ss)=NaN;