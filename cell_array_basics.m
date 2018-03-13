% This script shows basics of cell arrays

clear
close all
clc

% Defininig a cell array
% ======================

% Allocateing a 2-by-4 cell array
myCellArray1 = cell(2,4); 
disp('myCellArray1:')
disp(myCellArray1)

% Creating a cell array by initialization
myCellArray2 = {'Hello World' [1 2;3 4]; true(2,1) rand(5)};
disp('myCellArray2:')
disp(myCellArray2)

% Accesing a cell in an array
cell2 = myCellArray2(2);
disp('cell2:')
disp(cell2)

cellContent2 = myCellArray2{2};
disp('cellContent2:')
disp(cellContent2)

% celldisp displays a cell array
disp('celldisp:')
celldisp(myCellArray2)

% cellplot function creates a visualization of a 
% cell array
cellplot(myCellArray2)

