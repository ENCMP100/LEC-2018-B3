function game = shoot(game, playerNumber)
% Player throwing a banana
%
% Parameters:
%   game: contains the current state of the game
%   playerNumber 
%        1: east facing player
%        other: west facing player
%
% Return:
%  game: the updated game state after the current player played
%

playerX = game.players(playerNumber).x;
playerY = game.players(playerNumber).y;

if playerNumber == 1
    disp('Gorilla (facing east):');
else
    disp('Gorilla (facing west):');
end

a0 = round(input('    Angle (degrees)? '));

if playerNumber ~= 1
    a0 = 180 - a0;
end

v0 = round(input('    Velocity (m/s)? '));

t = 0:0.1:20; %compute a time vector, in seconds
x0 = playerX;
y0 = playerY + 3;
x = x0 + v0 * cosd(a0) * t; 
y = y0 + v0 * sind(a0) * t - 9.81/2 * t.^2;
plot(x,y,'r-');
figure(gcf) % bring the current figure to focus (foreground)


% TODO: Determine whether the game ended
game.isFinished = false; %% just a placeholder value
end
