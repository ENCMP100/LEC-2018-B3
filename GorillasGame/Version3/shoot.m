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
animate(x, y)
figure(gcf) % bring the current figure to focus (foreground)


% TODO: Determine whether the game ended
game.isFinished = false; %% just a placeholder value
end


function animate(x, y)

for i=1:length(x)-1
    plot([x(i) x(i+1)], [y(i) y(i+1)], 'r-')
    pause(0.01)
    plot([x(i) x(i+1)], [y(i) y(i+1)], 'w-')
    
    % colision detection
    % find the index of stagex where x(i+1) belongs to
    
    % Find the corresponding y of of that selected bin
    % If the y value of this bin is higher than y(i+1), this is a colition
    % so stop the for loop (use break command).
end


end

