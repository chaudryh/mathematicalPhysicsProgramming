% Gravitational Integration

% Date: October 9th, 2017
% Author: Hasana Chaudry
% Project: Mathematical Physics
% Instructor: Carl Faust

% This program calculates, with precision, the time it takes for an object
% to fall to the center of the earth using integration. It also calculates
% the acceleration at each interval.

% NOTE: The actual time it takes to fall the diameter of the 
% earth and end up on the opposite surface is 2530.50 seconds.

% To get 95% accuracy, the time must be at least 2403.98 seconds 
% To get 95% accuracy in this program, n must be at least 4.

% I ran the program using n = 1,2,3,4,5,6,7,8,9,10 to get my plot

% WARNING: DO NOT RUN THIS PROGRAM WITH DECIMALS. IT MAY LOOK LIKE 
% IT'S WORKING PROPERLY BUT IT'S DYING INSIDE AND LYING.


num = [];   % initialize array for x-axis
time = [];  % initialize array for y-axis

x = 1; %initislize a random variable to control loop termination

while x ~= 0
    % propmt the user in order to receive input for use as a 
    % parameter in the function runA1
    prompt = 'Enter the number of segments or hit 0 to finish. ';

    n = input(prompt);  %number of partitions of the earth

    if n == 0     % break out of the loop when the user hits 0
        break
    else
        [ftime] = grav(n); % call the function runA1
        num = [num, n];
        time = [time, ftime];

    end
end

x = num;    % assign values to the x-axis

y = time   % assign values to the y-axis

scatter(x,y, 'filled', 'r') % plot the graph and fill ponits with red






