function y=polynomial(w,x)
M=size(w,2)-1;
sum=w(1,1);
for i=2:M+1
    sum=sum+w(1,i).*(x.^(i-1));
end
y=sum;
end