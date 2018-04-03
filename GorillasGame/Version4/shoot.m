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

% Current position of the player
x0 = playerX;
y0 = playerY + 3;

% Calculating the y value of the prjectile at each building location using
% the following equations:
% x = x0 + v0 * cosd(a0) * t;   <-- eq. 1
% y = y0 + v0 * sind(a0) * t - 9.81/2 * t.^2;   <-- eq. 2
% 
% we can replace t in eq. 2 using t calculated from eq. 1
% y = y0 + v0 * sind(a0) * (x - x0) / (v0 * cosd(a0)) - 9.81/2 * ((x - x0) / (v0 * cosd(a0))).^2;  <-- eq. 3


% Calculating y values of the prjectile at building locations using eq. 3
projectileYAtBuildingLocations = y0 + v0 * sind(a0) * (game.stageX - x0) / (v0 * cosd(a0)) - 9.81/2 * ((game.stageX - x0) / (v0 * cosd(a0))).^2;


% Selecting the buildings which are taller than the height of the
% projectile at their locations. These are the candidates for collisions
collisionCandidates = projectileYAtBuildingLocations <= game.stageY;

if playerNumber == 1
    % This is the player at the left section of the stage. Therefore, a
    % potenial coltion can happen only with a building at the right-hand
    % side of it. Select the FIRST such building from the above
    % "collisionCandidates".
    
    collisionCandidates = collisionCandidates & game.stageX > x0; % buildings at the right hand side
    collisionBuildingIndex = find(collisionCandidates, 1); % first building that collides        
else
    % This is the player at the right section of the stage. Therefore, a
    % potenial coltion can happen only with a building at the left-hand
    % side of it. Select the LAST such building from the above
    % "collisionCandidates".
    
    collisionCandidates = collisionCandidates & game.stageX < x0; % buildings at the left hand side
    collisionBuildingIndex = find(collisionCandidates, 1, 'last'); % last building that collides
end

if ~isempty(collisionBuildingIndex)
    projectileXLast = game.stageX(collisionBuildingIndex);
else
    % no collision occurs. Setting the last x value of the prjectile to be
    % the end of the stage or begining of the stage depending on whether
    % the current player is the first player or the second player
    
    gapBetweenBuildings = game.stageX(2) - game.stageX(1);
    if playerNumber == 1
        projectileXLast = game.stageX(end) + gapBetweenBuildings; % end of the stage
    else
        projectileXLast = game.stageX(1) - gapBetweenBuildings;
    end
end

% calculating 100 points between the player positio n to the last x value
% of the projectile
projectileX = linspace(x0, projectileXLast);

% calculating y values of the projectile for the above x values of the
% projectile using eq. 3
projectileY = y0 + v0 * sind(a0) * (projectileX - x0) / (v0 * cosd(a0)) - 9.81/2 * ((projectileX - x0) / (v0 * cosd(a0))).^2;


% animating the projectile
animate(projectileX, projectileY, game)
figure(gcf) % bring the current figure to focus (foreground)

% TODO: Determine whether the game ended
game.isFinished = false; %% just a placeholder value
end


function animate(x, y, game)
% Animates the trajectory of the banana up to the colision of the first
% building.

handles = zeros(length(x));

% Since the width of bars was not specified, it uses a default width of 0.8
% (i.e. 80% of x step. Let's calculate the east and west wall of cuildings
% and store them in two arrays inside the game object. We will need this to
% detect collision of bananas on buildings.
buildingWidth = 0.8 * (game.stageX(2) - game.stageX(1)); % 
eastWallsX = game.stageX - buildingWidth/2;
westWallsX = game.stageX + buildingWidth/2;


for i = 1 : length(x)-1
    
    % plotting the line segment from the ith location in the trajectory to
    % the next one. Save the handle of the line segment in an array so that
    % we can delete it after the trajectory is completed.
    handles(i) = plot([x(i) x(i+1)], [y(i) y(i+1)], 'r-');
    
    % Add a delay to emulate slow motion
    pause(0.005)
    
    % checking whether the banana hits a building. 
    % ============================================
    
    % find the index of stagex where x(i+1) belongs to. i.e. x should be
    % greater than or equal eastWallsX and less than or equal to the
    % westWallsX
    index = find(x(i+1) >= eastWallsX & x(i+1) <= westWallsX, 1);
    
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

