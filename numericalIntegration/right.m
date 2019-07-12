% Right Endpoint Rule

% Date: October 9th, 2017
% Author: Hasana Chaudry
% Project: Mathematical Physics
% Instructor: Carl Faust

% A function that takes in the four parameters below and numerically
% integrates the given function using the Right Endpoint Rule. This function
% returns one value which is the total area under the curve that was given.

% func = function/curve who's area is to be determined
% max = upper limit of the integral's interval
% min = lower limit of the integral's interval
% num = number of rectangles under the curve

function [area] = right(func, min, max, num)

format long g

dx = (max-min)/num;

a = min;
b = min+dx;

points = [min:dx:max];

area = 0;

for i = 1:num
    
    xi = points(i+1);
    area = area+(dx*func(xi));
    
end

%fprintf('Area by Right Endpoint Rule for numerical integration = %f', area);
