% important distinction in Octave lang, if you want to display something to
% the output console we can simply remove ';' from the line of code
% thing of it as an assignment plus print.
% ideally use disp() function to output something that is not declared

A = [1, 2, 4; 5, 3, 2];
B = [1, 3, 4; 1, 1, 1];

s = 2;

add_AB = A + B

sub_AB = A - B

deriveAfromAB = add_AB - B

multA= A * s

divA = A / s
% whats happening over here how are we able to add a Matrix with a scalar
% turns out what this notation really means is the addition of the scalar times
% 'unit matrix' or J matrix (kind of like the identity matrix I but its
% all ones) plus matrix A.
addAs = A + s



