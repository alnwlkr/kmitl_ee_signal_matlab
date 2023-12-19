% function y = rectDT(W,n)
% y = 1 , |n|<=W
% y = 0 , |n|>W
% y = NaN , n is not an integer
% Written By 65010666, Pongpada Anoma
function y = rectDT(W,n)
    if W == round(W),
        y=1.0*(abs(n)<=abs(W));
        ss=find(round(n)~=n);
        y(ss)=NaN;
    else
        disp('In rectDT, Width parameter, W, is not an integer');
    end