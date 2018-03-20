function game = initgame()
% SETSTAGE sets up the stage by creating a bar chart
% Returns a structure which contains stageX and stageY as fields

stagex = 0:12:120;
buildingHeightRage = [25, 75]; % in meters
stagey = randi(buildingHeightRage, 1, length(stagex));
bar(stagex, stagey)

game = struct('stageX', stagex, ...
    'stageY', stagey, ...
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

