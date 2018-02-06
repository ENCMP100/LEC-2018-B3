


val = input('Enter a number below 10: ');

% Version 1: using if/elseif/else statement
if val == 1
    disp('One')
elseif val == 2
    disp('Two')
elseif val == 3
    disp('Three')
else
    disp('Not one, two or three')
end

fprintf('\n\n')


% Version 2: Using a switch statement
switch val
    case 1
        disp('One')
    case 2
        disp('Two')
    case 3
        disp('Three')
    otherwise
        disp('I''m tired')
end

    