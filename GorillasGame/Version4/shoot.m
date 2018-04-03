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

animate(x, y, game)
figure(gcf) % bring the current figure to focus (foreground)


% TODO: Determine whether the game ended
game.isFinished = false; %% just a placeholder value
end


function animate(x, y, game)
% Animates the trajectory of the banana up to the colision of the first
% building.

handles = zeros(length(x));

for i = 1 : length(x)-1
    
    % plotting the line segment from the ith location in the trajectory to
    % the next one. Save the handle of the line segment in an array so that
    % we can delete it after the trajectory is completed.
    handles(i) = plot([x(i) x(i+1)], [y(i) y(i+1)], 'r-');
    
    % Add a delay to emulate slow motion
    pause(0.01)
    
    % checking whether the banana hits a building. 
    % ============================================
    
    % find the index of stagex where x(i+1) belongs to. i.e. x should be
    % greater than or equal eastWallsX and less than or equal to the
    % westWallsX
    index = find(x(i+1) >= game.eastWallsX & x(i+1) <= game.westWallsX, 1);
    
    % NOTE: if the index is empty, that measn the current position of the banana
    % is between two buildings. 
    
    if ~isempty(index) 
        % Banana is within the x range of a building. If the y value of the
        % current position of the banana is smaller than the height of the
        % building located at this index, then the banana hits the
        % building, so we should stop the trajectory. Otherwise, we can
        % coninue to the next iteration.
        
        if y(i+1) <= game.stageY(index) 
            % Banana hits the building
            
            % plotting a dot to show the hit location
            plot(x(i), y(i), 'r*', 'MarkerSize', 8) 
            
            % breaking the for loop to stop plotting the remaining part of
            % the trajectory.
            break; 
        end
    end
end

% erasing all line segments
delete(handles);


end

