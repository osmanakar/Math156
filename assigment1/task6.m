%Polynomial Approximation

for i=1:12
    D(1,i)=2*(i-1)*pi/11-pi;
    D(2,i)=cos(2*D(1,i))+random;
    %D(2,i)=D(1,i)^4;
end

w1=gradient_solver(D,1);
w2=gradient_solver(D,2);
w3=gradient_solver(D,3);

hold on
fplot(@(x) cos(2*x),[-3,3],'r');
fplot(@(x) polynomial(w1',x) ,[-3,3],'b');

fplot(@(x) polynomial(w2',x) ,[-3,3],'m');
fplot(@(x) polynomial(w3',x) ,[-3,3],'y');
hold off

