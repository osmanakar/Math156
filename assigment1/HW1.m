
for i=1:12
    D(1,i)=2*(i-1)*pi/11-pi;
    D(2,i)=cos(2*D(1,i))+random('unif',-0.1,0.1);
    %D(2,i)=D(1,i)^4;
end

x= linspace(-pi,pi,12);
x0=linspace(-pi,pi);
y0=cos(2*x0);
y=D(2,int8(((x+pi)*11/(2*pi))+1));
plot(x,y,'*',x0,y0);
