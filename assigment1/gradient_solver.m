function w=gradient_solver(D,M)
% D is 2 x N matrix
%D=[1,2,3,4;2,4,6,9];
%M=2;

N=size(D,2);
Z=ones(N,M+1);
for i=1:N
    for j=2:M+1
        Z(i,j)=D(1,i)^(j-1);
    end
end

t=D(2,:)';
A=Z'*Z;
b=Z'*t;
w=A\b;


