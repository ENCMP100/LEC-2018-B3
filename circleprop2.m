% CIRCLEPROP: Calculates circumference and area of a circle of given
% radius and prints the result into the command window. This is is
% repeated 10 times,
%
% Author: Kamal Ranaweera
% License: GPLv3

clear
clc

for loopVar = 1:2:10
    % displaying which iteration we are in the loop
    fprintf("Loop Variable = %d\n", loopVar);
    
    % Taking radius as input
    radius = input('Enter radius: ');

    % Calculating circumference. i.e. c = 2*pi*r
    circum = 2 * pi * radius;

    % Calculating area
    area = pi * radius^2;
    
    
    fprintf("Circumference = %.3f\nArea = %.3f\n\n", ...
         circum, area);
     
end


