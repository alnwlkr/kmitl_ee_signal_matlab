%delta_a_(t) function
% delta_a(t,a) = 1/a*(u(t+a/2)-u(t-a/2))
% Written By 65010666, Pongpada Anoma
function y = delta_a(t,a)
    y = 1/a*(uCT(t+a/2)-uCT(t-a/2));