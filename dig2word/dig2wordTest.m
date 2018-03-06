% DIG2WORDTEST is a script to test the functionality of num2word user
% defined function.

% Reset environment
clear
clc

% taking input
digit = input('Enter a number: ');

% Converting digit to word
switch digit
    case 0
        result = 'zero';
    case 1
        result = 'one';
    case 2
        result = 'two';
    case 3
        result = 'three';
    case 4
        result = 'four';
    case 5
        result = 'five';
    case 6
        result = 'six';
    case 7
        result = 'seven';
    case 8
        result = 'eight';
    case 9
        result = 'nine'; 
    otherwise
        error('Input is out of range')
end

disp(result)