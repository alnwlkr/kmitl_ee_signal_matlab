% function y = uDT(n)
% y = 1 , n>=0
% y = 0 , n<0
% y = NaN , n is not an integer
% Written By 65010666, Pongpada Anoma
function y = uDT(n)
    y = 1.0*(n>=0);
    ss=find(round(n)~=n);
    y(ss)=NaN;