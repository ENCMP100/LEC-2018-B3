function result = dig2word(dig)
% DIG2WORD returns the "word" representation of a digit given as the input
% argument.
% 


    % Converting digit to word
    switch dig
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
            error('Invalid input')
    end
end