function game = initgame()
% SETSTAGE sets up the stage by creating a bar chart
% Returns a structure which contains stageX and stageY as fields

stagex = 0:12:120;
buildingHeightRage = [25, 75]; % in meters
stagey = randi(buildingHeightRage, 1, length(stagex));
bar(stagex, stagey)

% Since the width of bars was not specified, it uses a default width of 0.8
% (i.e. 80% of x step. Let's calculate the east and west wall of cuildings
% and store them in two arrays inside the game object. We will need this to
% detect collision of bananas on buildings.
buildingWidth = 0.8 * 12; % Note:
eastWallsX = stagex - buildingWidth/2;
westWallsX = stagex + buildingWidth/2;

game = struct('stageX', stagex, ...
    'stageY', stagey, ...
    'eastWallsX', eastWallsX, ...
    'westWallsX', westWallsX, ...
    'isFinished', false);

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

end

