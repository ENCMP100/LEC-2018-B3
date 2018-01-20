% PARABOLA: y = a*x^2 + b*x + c
% takes parameters and domain (range of x 
% values) for the parabolic curve, computes
% the range of x,y coordinates and plots 
% the curve

% Using disp function to provide a brief message.
disp('Plotting parabolic curve y = ax^2 + bx + c')

% Taking parameters
a = input('Enter coefficient ''a'': ');
b = input('Enter coefficient ''b'': ');
c = input('Enter coefficient ''c'': ');

% Taking domain limits
xmin = input('Enter the minimum for x: ');
xmax = input('Enter the maximum for x: ');

% Taking number of sample points
numPoints = input('Enter number of sample points (e.g. 20): ');

% Calculating a range of x values from xmin to xmax using linspace
% function.
x = linspace(xmin, xmax, numPoints);

% Calculating y = a* x^2 + b * x + x
% ==================================
% NOTE TO STUDENTS: 
% [1] X is a vector, not a scaller, and we need to calculate the
% square of each of its elements to calcualte the quadratic component of
% the parabola. Therefore, we use the .^ exponent operator, which is the
% element-wise exponent operator. If we exclude the "dot" in the operator,
% it will attempt to calculate the exponsent of the matrix, which is not
% intended. 
%
% [2] For the multiplication with the coefficient, we can use the regular
% multiplication operator * instead of the element-wise multiplication
% operator .* because the coefficient is a scalar. However, we could have
% used the element-wise multiplication .* even if it's not necessary when
% multiplying an array with a scalar.
y = a * x.^2 + b * x + c;


% Plotting
% ========

% Plotting the parabola using + mark to show sample points and dashes to
% interconnect sample coordinates.
plot(x,y, 'g+--')

% Displaying the labels of x and y axes
xlabel('x')
ylabel('y')

% Displaying the title for the plot
title('y = ax^2 + bx + c')

% Turning the grid on so that it's easier to read coordinate values
grid 'on'

% Turning the datacursormode to on so that coordinates can be read by
% clicking on the graph
datacursormode 'on'


% Getting the handle to the current figure using gcf and calling the figure
% function with it to bring the it to the top of all the windows if it's
% already behind some other window.
figure(gcf)

