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

% Initialize the game structure
% This "game" strucure will hold the state of the game and 
% will be modified through subsequent function calls.
game = initgame();

% Adding players to the game structure
game = setplayers(game);

while ~game.isFinished
    % player 1 playing
    game = shoot(game, 1);
    
    % player 2 playing
    game = shoot(game, 2);
end










