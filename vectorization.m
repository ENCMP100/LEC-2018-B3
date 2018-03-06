% This script shows some vectorization examples. Vectorization is the
% process of replacing loops in MATLAB code with vector (or matrix) based
% operations.

clear
clc

% Example 1: calculating the sum of all numbers in an M x N matrix
% ================================================================
M = 1000;
N = 1000;
mat = rand([M N]);

% using loops
profile on
tic
s = 0;
for row = 1:M
    for col = 1:N
        s = s + mat(row,col);
    end
end
fprintf("sum, using loop, is %f\n\n", s);
toc
profile viewer


% using vector or matrix operations
tic
s2 = sum(sum(mat));
fprintf("sum2, without loop, is %f\n\n", s2);
toc

% using vector or matrix operations
tic
s2 = sum(mat(:));
fprintf("sum2, without loop method 2, is %f\n\n", s2);
toc










