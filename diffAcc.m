% Differencing and Accumulation
n=-20:20;
gn=uDT(n).*cos(2*pi*n/10);
dgn=diff(gn);
agn=cumsum(gn);
subplot(3,1,1);p=stem(n,gn,'filled');
set(p,'LineWidth',1,'MarkerSize',4)
subplot(3,1,2);p=stem(-20:19,dgn,'filled');
set(p,'LineWidth',1,'MarkerSize',4)
subplot(3,1,3);p=stem(n,agn,'filled');
set(p,'LineWidth',1,'MarkerSize',4)