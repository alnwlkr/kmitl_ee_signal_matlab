% function y =  combDT(N0,n)
% y = NaN , n is not an integer
% Written By 65010666, Pongpada Anoma
function y =combDT(N0,n)
    if N0 == round(N0),
        y = 1.0*(n/N0 == round(n/N0));
        ss = find(round(n)~=n);
        y(ss) = NaN;
    else
        disp('In combDT, period parameter, N0, is not an integer');
    end