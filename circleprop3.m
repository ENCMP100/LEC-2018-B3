% CIRCLEPROP: Calculates circumference and area of a circle of given
% radius and prints the result into the command window. 
% Repeat this behaviour until user inputs a negative number
%
% Author: Kamal Ranaweera
% License: GPLv3

clear
clc

radius = input('Enter radius: ');


while radius >= 0
    
    % Calculating circumference. i.e. c = 2*pi*r
    circum = 2 * pi * radius;

    % Calculating area
    area = pi * radius^2;


    fprintf("Circumference = %.3f\nArea = %.3f\n\n", ...
         circum, area);

    radius = input('Enter radius: ');
    
end

disp('Done')


