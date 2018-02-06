% This script contains some experimental code segments used in class
% to demonstrate the functionality of selection statements.


clear
clc


schoolGrade = input('Which grade are you in: ');

% Version 1: Using nested if/else statements
if schoolGrade >= 10
    disp('Hello ')
    disp('Yay, you are in High School')
else
    if schoolGrade > 6
        disp('I''m in jounior high')
    else
        disp('I''m in elementary')
    end
end




% Version 1: Using if/elseif/else statements
if schoolGrade >= 10
    disp('Hello ')
    disp('Yay, you are in High School')
elseif schoolGrade > 6
    disp('I''m in junior high')
elseif schoolGrade >= 1
    disp('I''m in elementary')
else
    disp('I''m still not in school')
end







