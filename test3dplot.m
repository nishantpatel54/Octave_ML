close all;
clear all;
x = [0:0.1:10]';
y = [0:1:100]';
z = 3*x + 4*y +5;

znoise = x + y + 5*randn(size(x+y));

X=[x,y,ones(length(x),1)];
pseudoinverse=pinv(X);
b = pseudoinverse * znoise

figure
scatter3(x,y,znoise)
hold on
plot3(x,y,b(1)*x+b(2)*y+b(3),'b','linewidth',3)
grid on

testvalues=[1;5.5;5]
testoutput=transpose(b)*testvalues

xlabel('parameter 1')
ylabel('parameter 2')
zlabel('outputs')
