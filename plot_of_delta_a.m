%plot of delta_a(t)
% Written By 65010666, Pongpada Anoma
a=1.0:-0.1:0.1;
t=-1:0.001:1;
xmin=min(t);
xmax=max(t);
ymin=0; ymax=1/min(a);
kmax=length(a);
h=figure('Position',[100 50 640 640],'MenuBar','none',...
   'ToolBar','none');
for k=1:kmax
    y=delta_a(t,a(k));
    plot(t,y); hold on
    axis([xmin xmax ymin ymax]);
    M=getframe;
end
hold off