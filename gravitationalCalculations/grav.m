% Gravitational Integration

% Date: October 9th, 2017
% Author: Hasana Chaudry
% Project: Mathematical Physics
% Instructor: Carl Faust

% Define a function that takes the user's input as a parameter
% and returns the total time (ftime) as output

function [ftime] = grav(n) 
    %declaring variables for constants

    M = 5.972*10^24;    %mass of the earth
    G = 6.67408*10^-11; %gravitational constant
    V = 1.08*10^21;     %volume of the earth
    R = 6371393;        %radius of the earth
    vi = 0;             %initial velocity
    a = 0;              %initial acceleration
    times = [];         %array to store the individual times of the segments

    % coding base segment
    
    format long g

    p = M/V;                %density (constant)

    segsize = R/n;          %radius enclosed

    %re = segsize

    re = R;

    lpct = 0;   % initialize a loop counter to help shrink enclosed radius

    % start loop and set it to run n times
    % use n = n-1 as loop counter

    for i = 1:n

    a = G*p*(4/3)*pi*re;

    t = [-vi + (vi^2 + 2*a*segsize)^0.5]/a;

    times = [times, 2*t];

    totaltime = sum(times);

    %   segsize = vi*t + 0.5*a*t^2

    vf = (2*a*segsize + vi^2)^0.5;

    vi = vf;

    lpct = lpct + 1;

    re = R - lpct*segsize;

    end

    a = G*p*(4/3)*pi*re;

    totaltime = sum(times);

    ftime = totaltime;
    
end
