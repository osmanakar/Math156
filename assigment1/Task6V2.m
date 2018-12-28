%Polynomial Approximation

%Data Loading
%for i=1:12
 %   D(1,i)=2*(i-1)*pi/11-pi;
  %  D(2,i)=cos(2*D(1,i));
    %D(2,i)=D(1,i)^4;
%end
%%
w_star=gradient_solver(D,11);
w1=gradient_solver(D,1);
w2=gradient_solver(D,2);
w3=gradient_solver(D,3);
w4=gradient_solver(D,4);
w5=gradient_solver(D,5);
w6=gradient_solver(D,6);
w7=gradient_solver(D,7);
w8=gradient_solver(D,8);
w9=gradient_solver(D,9);
w10=gradient_solver(D,10);
w11=gradient_solver(D,11);


y_star=polynomial(w_star',x);
x=linspace(-pi,pi);
x0=linspace(-pi,pi,12);
yy=D(2,int8(((x0+pi)*11/(2*pi))+1));
y0=cos(2*x);
y1=polynomial(w1',x);
y2=polynomial(w2',x);
y3=polynomial(w3',x);
y4=polynomial(w4',x);
y5=polynomial(w5',x);
y6=polynomial(w6',x);
y7=polynomial(w7',x);
y8=polynomial(w8',x);
y9=polynomial(w9',x);
y10=polynomial(w10',x);
y11=polynomial(w11',x);


%plot(x0,yy,'b*',x,y0,'r',x,y8,'y',x,y9,'g',x,y10,'m',x,y11,'k');
%plot(x0,yy,'b*',x,y0,'r',x,y_star,'k');
plot(x0,yy,'b*',x,y0,'r',x,y10,'g',x,y11,'k');%,x,y9,'k');

