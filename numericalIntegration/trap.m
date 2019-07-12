% Trapezoid Rule

% Date: October 9th, 2017
% Author: Hasana Chaudry
% Project: Mathematical Physics
% Instructor: Carl Faust

% A function that takes in the four parameters below and numerically
% integrates the given function using the Trapezoid Rule. This function
% returns one value which is the total area under the curve that was given.

% func = function/curve who's area is to be determined
% max = upper limit of the integral's interval
% min = lower limit of the integral's interval
% num = number of rectangles under the curve

function [area] = trap(func, min, max, num)

format long g

dx = (max-min)/num;

a = min;
b = min+dx;

area = 0;

while (min<max);
    
    area = area+[(dx/2)*(func(min)+func(min+dx))];
    min = min+dx;
    
end

%fprintf('Area by Trapezoid Rule for numerical integration = %f', area);
