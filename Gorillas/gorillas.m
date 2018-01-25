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

% Launch a figuer window
figure
hold on



% Set up the stage by creating a bar chart
stagex = 0:12:120;
stagey = randi(50, 1, length(stagex));
bar(stagex, stagey)
axis([min(stagex)-12, max(stagex) + 12, min(stagey), max(stagey) * 2])


% calculate the positions of the gorillas
index1 = randi([1, round(length(stagex)/4)]);
player1x = stagex(index1);
player1y = stagey(index1) + 2.5;
plot(player1x,player1y, '+', 'MarkerSize',20) 


% calculate the positions of the gorilla 2
index2 = randi([round(length(stagex)/1), round(length(stagex))]);
player2x = stagex(index2);
player2y = stagey(index2) + 2.5;
plot(player2x,player2y, '+', 'MarkerSize',20) 



