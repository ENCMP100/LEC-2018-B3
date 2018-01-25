% TYPELIMITS: Assigns a range of values to different data types and plots
% them to show the maximum and minimum values that can be stored in some of
% the data types

clear
close all
clc
figure(1)

% uint8 and int8 vs decimal
decimal = -300:300;
uint8Values = uint8(decimal); 
int8Values = int8(decimal);
subplot(1,2,1)
plot(decimal, uint8Values, 'r-')
hold on
plot(decimal, int8Values, 'b--')

xlabel('Decimal Value')
ylabel('Converted Value')
title('Converted Value vs Input Value')
grid 'on'
datacursormode 'on'
legend('uint8', 'int8', 'Location', 'NorthWest')


% uint16 and int16 vs decimal
decimal = -100000:200:100000;
uint16Values = uint16(decimal); 
int16Values = int16(decimal);
subplot(1,2,2)
plot(decimal, uint16Values, 'r-')
hold on
plot(decimal, int16Values, 'b--')

xlabel('Decimal Value')
ylabel('Converted Value')
title('Converted Value vs Input Value')
grid 'on'
datacursormode 'on'
legend('uint16', 'int16', 'Location', 'NorthWest')
