% Initialize matrix A
A = [1, 2, 3; 4, 5, 6;7, 8, 9]
B = [1,2,3,4,5,6,7,8,9]

s = [1;1;1;1;1;1;1;1;1]

% Initialize a 3 by 2 matrix
J = [1, 2; 3, 4;5, 6]

% Initialize a 2 by 1 matrix
K = [1,2,3; 2,3,4]

% We expect a resulting matrix of (3 by 2)*(2 by 1) = (3 by 1)
mult_JK = J*K

% Make sure you understand why we got that result

summationofNint = B * s


X = [1,3;2,4;0,5]
Y = [1,0;2,3]

res = X*Y
% Initialize vector v
v = [1; 1; 1]

% Multiply A * v
Av = A * v

% lets say we have a set of housing prices 2104, 1416, 1534, 852
% we want to caculate the h(x) values for the loss function or get our prediction we can use
% matrix dot product to do so by creating a matrix where first column in all ones.
% and the second the housing prices.
HousingPrices = [1,2104;1,1416;1,1534;1,852]
% our linear function h(x) = -40+0.25x theta0 = -40 theta1 = 0.25
linearFunc = [-40;0.25]

% we can also compute predictions for multiple hypothesis using matrix matrix
% multiplication here we a matrix where the first row is theta0 values and second
% is the theta1 values
competingHypothesis = [-40,200,-150;0.25,0.1,0.4]


% output of h(x) for all values of
prediction = HousingPrices * linearFunc

predictions = HousingPrices * competingHypothesis

