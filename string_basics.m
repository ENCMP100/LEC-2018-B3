% This script demonstrates string manipulation
% functions. 
% Note that this script purposely avoided placing
% semicolons on most assignment statements to help
% us see values being assigned.



clear
close all
clc

% concatenating strings
str1 = 'The quick brown fox'
str2 = 'jumps over the lazy dog'

mystr1 = strcat(str1, ' ', str2)
mystr2 = strcat([str1 ' ' str2])


% Creating a formatted string
className = 'ENCMP100B3';
numStudents = 175;
myMessage = sprintf('\nHello,\nThe number of students in %s is %d\nThank you', ...
   className, numStudents);

disp(myMessage)



% creating a blank space (white space) vector
myBlankVec = blanks(5);
disp(myBlankVec)

% removing trailing white spaces
myString = '    This   string has white spaces    '
myString2 = deblank(myString)


% removing (trimming) both leading AND trailing white spaces
myString3 = strtrim(myString)

% converting case
disp(blanks(2)') % displaying 2 blank lines
myString = 'The Quick Brown Fox Jumps Over the Lazy Dog'
upperCaseStr = upper(myString)
lowerCaseStr = lower(myString)

% Full string comparisons
str1 = 'The Quick Brown Fox'
str2 = 'The Quick Brown Fox'
result1 = strcmp(str1, str2)

str3 = 'The Quick Brown Fox Jumps Over the Lazy Dog'
result2 = strcmp(str1, str3)

% Partial string comparisons
testStr1 = 'The Quick Brown Fox is Sneaky'
testStr2 = 'The Quick Brown Fox Jumps'
result4 = strncmp(testStr1, testStr2, 20)
result5 = strncmp(testStr1, testStr2, 21)

% Case insensitive string comparisons
str1 = 'The Quick Brown Fox'
str2 = 'The quick brown fox'
result6 = strcmp(str1, str2)
result7 = strcmpi(str1, str2)

str1 = 'The Quick Brown Fox is Sneaky'
str2 = 'The quick brown fox jups over the lazy dog'
result8 = strncmp(str1, str2, 20)
result9 = strncmpi(str1, str2, 20)

% Finding occurrences of one string inside another
string = 'Nouns in English are preceded by the definite article when the speaker believes that the listener already knows what he is referring to.'
pattern = 'the'
indiies = strfind(string, pattern)

% Find and replace all occurrences of a pattern
string = 'Nouns in English are preceded by the definite article when the speaker believes that the listener already knows what he is referring to.'
pattern = 'the'
replacement = 'THE'
newString = strrep(string, pattern, replacement)

% date
today = date

% evaluating a string as a MATLAB expression
expression = input('Enter a valid arithmetic expression: ', 's')
evalResult = eval(expression)

% Try the following functions

% isletter, isspace, ischar

% int2str, num2str, str2double, str2num

% strtok




