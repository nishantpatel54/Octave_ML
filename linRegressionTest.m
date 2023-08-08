close all;
clear all;
clc;

x = [0:0.1:10]';
y = 3*x + 5;

figure
plot(x,y)

xlabel('samples')
ylabel('values')
grid on

ynoise = y + 5*randn(size(y));

figure
scatter(x,ynoise)
xlabel('noisey samples')
ylabel('noisey values')

grid on

X = [x,ones(length(x),1)];
pseudoinverse = pinv(X)
b = pseudoinverse * ynoise

figure
scatter(x,ynoise)
hold on
plot(x,b(1)*x+b(2))
plot(x,y)
grid on

xlabel('final samples')
ylabel('final values')
legend('xnoise','regression','original')

