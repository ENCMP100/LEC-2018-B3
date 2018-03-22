% This script shows use of advanced file 
% input output operations in MATLAB

% initializatoin
clear
clc

% creating a matrix and saving it to a text file.
mat1 = [1 2 3; 4 5 6; 7 8 9; 1 2 3];
save mymat.txt mat1 -ascii

% checking the content of the file. Note: the file is human readable
type mymat.txt

% clear the workspace and load the saved file and check the workspace
clear
load mymat.txt
whos

% creating the matrix and saving it to a binary MAT file.
mat1 = [1 2 3; 4 5 6; 7 8 9; 1 2 3];
save mymat.mat mat1

% checking the content of the file. Note: the file is NOT human readable
type mymat.mat


% clear the workspace and load the saved file and check the workspace
clear
load mymat.mat
whos

% appending a second matrix to the same binary MAT file.
mat2 = [true false];
save mymat.mat mat2 -append

% clear the workspace and load the saved file and check the workspace
clear
load mymat.mat
whos

% overwriting an existing MAT file
mat3 = rand(5);
save mymat.mat mat3

% clear the workspace and load the saved file and check the workspace
clear
load mymat.mat
whos

% Generic File Input/Output
% =========================
clc
clear

% checking the content of the sample.txt file in the current folder
type sample.txt

% Opening the file for low-level reading
fileID = fopen('sample.txt');

if fileID < 0
    error('Error opening the file');
end


% reading and displaying the first line of the opened file
textLine = fgetl(fileID);
disp(textLine)

% reading and displayin the next line (second line)
textLine = fgetl(fileID);
disp(textLine)

% reading and displayin the next line (third line)
textLine = fgetl(fileID);
disp(textLine)

% reading and displayin the next line (fourth line)
textLine = fgetl(fileID);
disp(textLine)

% reading and displayin the next line (fifth line)
textLine = fgetl(fileID);
disp(textLine)

% closing an opened file VERY IMPORTANT
fclose(fileID);

% NOTE: fgets is very similar to fgetl in the sense 
% that it also reads files line by line. However, fgets
% retains the newline character at the end of a line whereas
% fgetl strips it off.


% Write a loop to read a file line by line until end
% Use the function feof to determine whether the end of file
% has been reached





% Writing formatted text to a text file
fileID2 = fopen('myfile.txt', 'w'); % opening the file for writing (or overwriting)
if fileID2 < 0
    error('Error opening the file');
end
byteCount = fprintf(fileID2, "This is the line number %d\n", 1);

fprintf(fileID2, "This class has %d students\n", 175);
% closing the file
fclose(fileID2);


% Appending formatted text to the end of a text file
fileID3 = fopen('myfile.txt', 'a'); % opening (or creating) the file for appending
fprintf(fileID2, "Average class has %3.2f average\n", 82.758);
fclose(fileID3);


