% animate exp(j*theta)
m=5;
q=-50;
theta=1e-16:pi/10:2*pi*m;
t=theta/(2*pi*50);
p=exp(q*t).*exp(j*theta);
h=figure('Position',[100 50 640 640],'MenuBar','none',...
   'ToolBar','none');
subplot(2,2,1);
%axis([-1 1 -1 1]);
plot(p,'r');
title('Complex plane plot of exp(j*wt)');
xlabel('Real');
ylabel('Imag');
hold on;
subplot(2,2,2);
plot(t,imag(p),'r');
title('Imaginary Part of exp(j*wt)');
xlabel('time -->');
ylabel('Imag');
%axis([0 20e-3 -1 1])
hold on;
%axis off;
subplot(2,2,3);
plot(real(p),t,'r');
title('Real Part of exp(j*wt)');
xlabel('Real');
ylabel('<-- time');
set(gca,'YDir','reverse')
%axis([-1 1 0 20e-3])
%axis off;
hold on;
subplot(2,2,4);
plot(t,rem(theta,2*pi),'r');
title('Angle of exp(j*wt)');
xlabel('time-->');
ylabel('Radian');
%axis([0 20e-3 0 2*pi])
%axis off;
hold on;
kmax=length(theta);
for k=1:kmax
    y=exp(q*t(k))*exp(j*theta(k));
    subplot(2,2,1);
    axis equal
    plot(y,'o')
    grid on
    subplot(2,2,2);
    plot(theta(k)/(100*pi),imag(y),'o');
    grid on
    subplot(2,2,3);
    plot(real(y),theta(k)/(100*pi),'o');
    %axis()
    grid on
    subplot(2,2,4);
    plot(theta(k)/(100*pi),rem(theta(k),2*pi),'o');
    %axis()
    grid on
    M(k)=getframe(h);
end
subplot(2,2,1);
hold off;
subplot(2,2,2);
hold off;
subplot(2,2,3);
hold off;
subplot(2,2,4);
hold off;