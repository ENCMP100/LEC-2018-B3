% DIG2WORDTEST is a script to test the functionality of dig2word user
% defined function.

% Reset environment
clear
clc

% taking input
digit = input('Enter a digit: ');

% calling the user defined function to find the "word" representation of
% the input number
word = dig2word(digit);

disp(word)

% Print a thank you message
thanks()

