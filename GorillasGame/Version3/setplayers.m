function [player1x, player1y, player2x, player2y] = setplayers(stagex, stagey)

% calculate the positions of the gorillas
index1 = randi([1, round(length(stagex)/4)]);
player1x = stagex(index1);
player1y = stagey(index1) + 3;
plot(player1x,player1y, 'p', 'MarkerSize',20) 


% calculate the positions of the gorilla 2
index2 = randi([round(length(stagex)/2), length(stagex)]);
player2x = stagex(index2);
player2y = stagey(index2) + 3;
plot(player2x,player2y, 'p', 'MarkerSize',20) 

end