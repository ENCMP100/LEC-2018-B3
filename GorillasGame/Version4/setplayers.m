function game = setplayers(game)
% This function adds two new strutures to represent two players to the game
% Each player structure contains x and y coordinates representing 
% the player locations

stagex = game.stageX;
stagey = game.stageY;

% calculate the positions of the gorillas
index1 = randi([1, round(length(stagex)/4)]);
player1x = stagex(index1);
player1y = stagey(index1) + 3;
plot(player1x,player1y, 'p', 'MarkerSize',20);


% calculate the positions of the gorilla 2
index2 = randi([round(length(stagex)/2), length(stagex)]);
player2x = stagex(index2);
player2y = stagey(index2) + 3;
plot(player2x,player2y, 'p', 'MarkerSize',20);


% updating the game object
player1 = struct('x', player1x, 'y', player1y);
player2 = struct('x', player2x, 'y', player2y);

game.players = [player1, player2];


end