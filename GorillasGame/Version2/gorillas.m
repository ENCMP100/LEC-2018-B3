% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This coude is released under MIT License
%



% Initilization
% =============
close all % closing all figures
clc % clear the command window
clear % clear all workspace variables

% Launch a figure window
figure
hold on


% Set up the stage by creating a bar chart
stagex = 0:12:120;
buildingHeightRage = [25, 75]; % in meters
stagey = randi(buildingHeightRage, 1, length(stagex));
bar(stagex, stagey)

% calculating horizontal and verticla axes limits
xmin = min(stagex) - 12; % "-12" to create some room at the left.
xmax = max(stagex) + 12; % "+12" to create some room at the right. 
ymin = 0; % Need to plot from the ground level (y = 0)
buildingHeightDifference = max(stagey) - ymin;
ymax = max(stagey) + buildingHeightDifference;
axis([xmin, xmax, ymin, ymax])

title('{\itGorillas} in MATLAB');
xlabel('Position (m)');
ylabel('Height (m)');

% calculate the positions of the gorillas
index1 = randi([1, round(length(stagex)/4)]);
player1x = stagex(index1);
player1y = stagey(index1) + 3;
plot(player1x,player1y, 'p', 'MarkerSize',20) 


% calculate the positions of the gorilla 2
index2 = randi([round(length(stagex)/2), length(stagex)]);
player2x = stagex(index2);
player2y = stagey(index2) + 3;
plot(player2x,player2y, 'p', 'MarkerSize',20) 

% Player 1 throws a banana
disp('Gorilla (facing east):');
a0 = round(input('    Angle (degrees)? '));
v0 = round(input('    Velocity (m/s)? '));

t = 0:0.1:20; %compute a time vector, in seconds
x0 = player1x;
y0 = player1y + 3;
x = x0 + v0 * cosd(a0) * t; 
y = y0 + v0 * sind(a0) * t - 9.81/2 * t.^2;
plot(x,y,'r-');
figure(gcf) % bring the current figure to focus


% Player 2 throws a banana
disp('Gorilla (facing west):');
a0 = round(input('    Angle (degrees)? '));
a0 = 180 - a0; 
v0 = round(input('    Velocity (m/s)? '));

t = 0:0.1:20; %compute a time vector
x0 = player2x;
y0 = player2y + 3;
x = x0 + v0 * cosd(a0) * t; 
y = y0 + v0 * sind(a0) * t - 9.81/2 * t.^2;
plot(x,y,'r-');
figure(gcf) % bring the current figure to focus
