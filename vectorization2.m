% This script shows some vectorization examples. Vectorization is the
% process of replacing loops in MATLAB code with vector (or matrix) based
% operations.

clear
clc


Example 2: selecting a sub set of values that meets a criteria
==============================================================

mat = rand(10000, 10000);

% find number of elements which have value 
% larger than 0.5

tic
[rows, cols] = size(mat);
count = 0;
for row = 1:rows
    for col = 1:cols
        if mat(row,col) > 0.5
            count = count + 1;
        end
    end
end

fprintf("Number of elemements that are greater than 0.5 is %d\n\n", count);
toc


% Vectorized soluion

tic
mat2 = mat > 0.5;
mat3 = double(mat2);
count2 = sum(mat3(:));
fprintf("Number of elemements that are greater than 0.5, computed without loops, is %d\n", count2);
toc












