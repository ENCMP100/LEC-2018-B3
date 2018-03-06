% This script prompt for the user to type a number in lower case letters
% and then uses a switch statement to determine the numerical value. 


inValue = input('Enter a numer between 1 to 3 in lower case: ', 's');

switch inValue
    case {'one'}
        outVal = 1;
    case 'two'
        outVal = 2;
    case 'three'
        outVal = 3;
    otherwise
        error('Invalid input')
end

fprintf("Output value %d", outVal);
