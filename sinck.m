k=-20:1:20;
X=0.5*sinc(0.5*k);
m=10;
i=-200:1:200;
Xm=zeros(length(i),1)';
Xmp=zeros(length(i),1)';
Xmn=zeros(length(i),1)';
j=0;n=0;
for p=-200:1:200
    n=n+1;
    if (p/m)==round(p/m);
        j=j+1;
        Xm(n)=X(j);
    end
end
for p=2:400;
    Xmp(p)=0.5*Xm(p-1);
    Xmn(p)=0.5*Xm(p+1);
end
figure(2);
subplot(2,1,1);
stem(i,Xm);
subplot(2,1,2);
stem(i,Xmp+Xmn);
    