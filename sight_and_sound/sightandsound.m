% This script shows the basic use of images and sound in MATLAB


% Initialization
clear
close all
clc


% Reading an image from the current working directory and displaying it
im1 = imread('Lenna.png');
whos im1  % Just checking what kind of data img is
figure  % Creating a new figure window
image(im1) % Displaying the image


im1(100:200, 100:200, 1) = 1;
im1(100:200, 100:200, 2) = 0;
im1(100:200, 100:200, 3) = 0;

figure  % Creating a new figure window
image(im1) % Displaying the image



% Creating a random colour image 
im2(:,:,3) = rand(480);
im2(:,:,1) = rand(480); 
im2(:,:,2) = rand(480); 

im2(100:200, 350:450, 1) = 1;
im2(100:200, 350:450, 2) = 0;
im2(100:200, 350:450, 3) = 0;

whos im2
figure
image(im2)

% Saving a true-color image to the disk
imwrite(im2, 'myoutimage1.png','png') 


% Colour-mapped image basics
% ==========================

% displaying the current colormap
disp(colormap) % displays the RGB components of the default color map
size(colormap) % check the size of the colormap. Note that it has 64 colors

% Creating an image where pixel points to a particular color in the color
% map
im4 = zeros(480); % Creates a 2D matrix 

im4(:) = 1; % sets all elements in the matrix to the 1st color in the color map
image(im4)

im4(:) = 30; % sets all elements in the matrix to the 30th color in the color map
image(im4)

im4(:) = 45; % sets all elements in the matrix to the 45th color in the color map
image(im4)

im4(:) = 64; % sets all elements in the matrix to the 64th (last) color in the color map
image(im4)


% Creating and displaying a 480 x 480 color-mapped image where each pixel
% shows a random color from the current color map
imx = rand(480); % each value can range from 0 to 1
[Rows, Cols] = size(colormap);
imx = uint8(imx * (Rows - 1)) + 1;
image(imx)


% Creating a 640 x 400 color-mapped color image which shows each color in
% the color map in horizontal stripes. Each strip is 64 pixels in height.
im5 = zeros(640,400);
for i=1:64
    im5((i-1)*64 + 1 :i*64, :) = i;
end
image(im5)

% Different types of built-in coljetor maps: parula, jet, winter, summer
colormap(jet)
colormap(winter)

% Saving a color-mapped true-color image to the disk
imwrite(im5, colormap, 'myoutimage2.png','png') 


% Working with sounds
clear
load 'gong.mat'; % loading sound wave from a mat file.
whos
sound(y); % plays the sound at default sampling frequency determined by constant Fs

% 
load 'handel.mat'; % loading sound wave from a mat file.
sound(y);





