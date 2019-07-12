% Numerical Integration

% Date: October 9th, 2017
% Author: Hasana Chaudry
% Project: Mathematical Physics
% Instructor: Carl Faust

% This program experiments with numerical integration as done through the 
% left endpoint rule, right endpoint rule, trapezoid rule, midpoint rule, 
% and Simpson's rule.

% NOTE: '@(x)' must be added before the user's function input in order for
% Matlab to recognize it as a function

prompt1 = 'Enter a function to integrate. ';
func = input(prompt1);  %function/curve who's area is to be determined

prompt2 = 'Enter the upper limit of the interval to integrate over. ';
max = input(prompt2);  %upper limit of the integral's interval

prompt3 = 'Enter the lower limit of the interval to integrate over. ';
min = input(prompt3);  %lower limit of the integral's interval

prompt4 = 'Enter the number of segments. ';
num = input(prompt4);  %number of rectangles under the curve

fprintf(1, '\n');

format long g

[area1] = midpt(func, min, max, num);
[area2] = trap(func, min, max, num);
[area3] = simpson(func, min, max, num);
[area4] = left(func, min, max, num);
[area5] = right(func, min, max, num);

fprintf('Midpoint Rule = %d \n', area1);
fprintf('Trapezoid Rule = %d \n', area2);
fprintf('Simpsons Rule = %d \n', area3);
fprintf('Left Endpoint Rule = %d \n', area4);
fprintf('Right Endpoint Rule = %d \n', area5);



