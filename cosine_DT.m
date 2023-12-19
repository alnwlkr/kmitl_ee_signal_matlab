%sine DT
q=[13 23 31 53];
p=[1 2 5 7];
n=1:106;
sin_n=zeros(length(p),length(n));
for k=1:4
    sin_n(k,:)=cos(2*pi*p(k)/q(k)*n);   
end
h=figure('Position',[100 50 800 600])
%,'MenuBar','none',...
 %  'ToolBar','none');
subplot(2,2,1);
stem(n,sin_n(1,:),'fiiled');
title('p/q=1/13');
axis([0 max(n) -1.5 1.5]);
subplot(2,2,2);
stem(n,sin_n(2,:),'fiiled');
title('p/q=2/23');
axis([0 max(n) -1.5 1.5]);
subplot(2,2,3);
stem(n,sin_n(3,:),'fiiled');
title('p/q=5/31');
axis([0 max(n) -1.5 1.5]);
subplot(2,2,4);
stem(n,sin_n(4,:),'fiiled');
title('p/q=7/53');
axis([0 max(n) -1.5 1.5]);