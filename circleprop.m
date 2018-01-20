% CIRCLEPROP: Calculates circumference and area of a circle of given
% radius and prints the result into the command window.
%
% Author: Kamal Ranaweera
% License: GPLv3


% Taking radius as input
radius = input('Enter radius: ');

% Calculating circumference. i.e. c = 2*pi*r
circum = 2 * pi * radius;

% Calculating area
area = pi * radius^2;

% Displaying results
% Let's use %.3f to print the result in 3 decimal places and \n to add a
% newline before the word "Area". We use two newline characters at the end
% to make sure there is a blank line before the command prompt is shown
% when the script ended.
% 
% Refer to the slides and the textbook for more formatting options
% related fprintf
fprintf("Circumference = %.3f\nArea = %.3f\n\n", circum, area);



