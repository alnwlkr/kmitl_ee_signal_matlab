% Convolution integral
tau=-10:1e-4:10;
x=2*tri(tau/2);
%t=0;
p=1;
Fig=figure('Position',[100 50 640 640],'ToolBar','none');
for t=-5:0.1:5
    p=p+1;
    k=find(tau==t);
    y=zeros(1,length(tau));
    h=tri(t-tau);
    prod=x.*h;
    y(k)=sum(prod)*1e-4;
    subplot(4,1,1)
    plot(tau,x);
    title('x(tau)')
    axis([-10 10 0 2.5]);
    subplot(4,1,2)
    plot(tau,h)
    title('h(t-tau)')
    axis([-10 10 0 2.5]);
    hold on;
    subplot(4,1,3)
    plot(tau,x.*h)
    title('x(tau)h(t-tau)')
    hold on;
    axis([-10 10 -0.1 4.5]);
    subplot(4,1,4)
    plot(tau(k),y(k),'.')
    axis([-10 10 -0.1 2.5]);
    title('y(t)')
    hold on;
    M(p)=getframe(Fig);
end
hold off;
