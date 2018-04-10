% This script shows advanced graphic concepts in MATLAB

% Initlization
clear
close all
clc

% Graphic Root
% ============
% All MATLAB graphics are part of the tree
% check the command window after executing the following commands one at a
% time.

groot

% groot.CurrentFigure

handle = groot;
handle.CurrentFigure

get(groot, 'CurrentFigure')

get(groot, 'Children')


% creating a new figure
figure

groot 

get(groot, 'CurrentFigure')

children = get(groot, 'Children')

% creating another figure

figure

groot

currentFigure = get(groot, 'CurrentFigure')

children = get(groot, 'Children')

% closing all figures
close all

groot


% Navigating through the graphic tree
% ===================================

x = -100:10:100;
y = x.^2;

figure

subplot(1,2,1)
plot(x,y)

subplot(1,2,2)
stem(x,y)

handle = gcf; % current figure.
handle.Color = [1 1 0]; % set the color of the figure to yellow

% a second way to set the color of the current figure
set(get(groot, 'CurrentFigure'), 'Color', [1 0 0])

% the most compact way to set the color of the current figure
set(gcf, 'Color', [0 1 1]) 

% Children of the figure
children = get(gcf, 'Children');
whos children

% seting the color of the first child axes
children(1).Color = [1 1 0];

% seting the color of the second child axes
children(2).Color = [1 0 1];

% the most compact way to set the color of the currently active axes
set(gca, 'Color', [0.4 0.6 0.2])


% Children of axes
axesChildren = get(gca, 'Children');
whos axesChildren
axesChildren

% Adding another plot to the axes
hold on
plot(x, y, '-');

% Checking the chidlren
newAxesChildren = get(gca, 'Children');
whos newAxesChildren
newAxesChildren


% Checking the parents of the first of the new Children
child = newAxesChildren(1);
child.Parent

child.Parent.Color = [0.8 0.8 0];


% Directly accessing handle to a plot
% ===================================
figure
hold on

h1 = plot(x, y + 5000);
h2 = stem(x,y + 5000);

% manipulating properties of plots
h1.LineWidth = 3;
h2.LineWidth = h1.LineWidth;
h2.MarkerSize = 12;

% setting the figure title
title('My Example Figure')




myvar = true;

if myvar
    disp('Two')
end

    


















