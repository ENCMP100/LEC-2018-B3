% Advanced Plotting

% Initialization
clear 
close all
clc

% Ploting population vs year using different plot types
year = 2013:2017;
pop = [0.9 1.4 1.7 1.3 1.8];

figure

% Creating a subplot containing a line graph
subplot(2,2,1)
plot(year,pop)
title('plot')
xlabel('Year')
ylabel('Population (mil)')


% Creating a subplot containing a bar graph
subplot(2,2,2)
bar(year,pop)
title('bar')
xlabel('Year')
ylabel('Population (mil)')

% Creating a subplot containing an area graph
subplot(2,2,3)
area(year,pop)
title('area')
xlabel('Year')
ylabel('Population (mil)')

% Creating a subplot containing a stem graph
subplot(2,2,4)
stem(year,pop)
title('stem')
xlabel('Year')
ylabel('Population (mil)')


% Advanced bar garphs
% ===================
figure
groupages = [8 19 43 25; 35 44 30 45];

% Bar graph of groups (each group represents values from a row of a matrix)
subplot(1,2,1)
bar(groupages)
xlabel('Group')
ylabel('Ages')

% Stacked bar graph of groups
subplot(1,2,2)
bar(groupages, 'stacked')
xlabel('Group')
ylabel('Ages')
% y value of a top of a bar is the cumulative value of itself and all previous bars

% Histogram
% =========
figure
quizzes = [10 8 5 10 10 6 9 7 8 6 10 1 8];

% Plots frequency of a data set without specifying bin size
subplot(1,2,1)
histogram(quizzes) 
xlabel('Grade')
ylabel('#')
title('Quiz Grades')

% Specifying bin size
subplot(1,2,2)
histogram(quizzes, 3) % 3 bins
xlabel('Grade') 
ylabel('#')
title('Quiz Grades')


% Pie charts
% ==========
data = [11 14 8 3 1];
figure

% unlabeled pie chart
subplot(1,2,1)
pie(data)

% labeled pie chart
subplot(1,2,2)
pie(data, {'A', 'B', 'C', 'D', 'E'})

% Log-scale plots
% ===============

% loglog - uses log scale for both x and y axes

% semilogx - uses log scale the  x axis

% semilogy - uses log scale the  y axis


% Animated plots
% ==============

% comet - animated line plot
x = -pi:pi/200:pi; % some x values
y = tan(sin(x))-sin(tan(x)); % some y values
figure

subplot(2,1,1)
plot(x,y) % none animated plot

subplot(2,1,2)
comet(x,y) % animated plot

