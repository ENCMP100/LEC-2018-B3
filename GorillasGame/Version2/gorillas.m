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


[stageX, stageY] = setstage();

[p1x, p1y, p2x, p2y] = setplayers(stageX, stageY);

won = false;
turn = 1;
while ~won
    % use mod function or some other function to
    % replace this if/else statement
    if turn == 1
        won = shoot(p1x, p1y, 1);
        turn = 2;
    else
        won = shoot(p2x, p2y, 2);
        turn = 1;
    end
end










