%% MTH20D MatLab HW 2
 
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 
 
%% Section 3.2 :: Eulers Method
% Example

f = @(x, y) x^2 - 1;
h = 0.5;
x0 = 0;
y0 = 1;

intervalLength = 2;

[x,y] = Euler(h, x0, y0, intervalLength, f);

plot(x, y, 'r');
hold on; grid on; box on;

% Exercise 3.1
h = 0.2;
[x,y] = Euler(h, x0, y0, intervalLength, f);
plot(x, y, 'b');

h = 0.1;
[x, y] = Euler(h, x0, y0, intervalLength, f);
plot(x, y, 'g')

h = 0.01;
[x, y] = Euler(h, x0, y0, intervalLength, f);
plot(x, y, 'c');
hold off;

%% Section 3.3 :: Experimenting with Euler's Formula
% part a
f = @(x, y) x^2 - y^3;
h = 1;
x0 = 0;
y0 = 0;
interval = 4;

ymin = -10;
ymax = 10;

[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'r');
hold on; box on; grid on;

h = 0.5;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'b');

h = 0.25;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'g');

h = 0.1;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'k');

ylim( [ymin, ymax] );

% part b
hold off;

h = 1;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'r');
hold on; box on; grid on;

h = 0.1;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'g');

h = 0.01;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'b');

h = 0.001;
[x,y] = Euler( h, x0, y0, interval, f );
plot(x, y, 'k');

ymin = 0;
ymax = 2.5;
ylim( [ymin, ymax] );

%% Section 3.4 :: ODE 45
% part a
hold off;
close all;

xmin = 0;
xmax = 10;
x0 =0;
y0 = 1;

g = @(x, y) sin(x);
[x, y] = ode45( g, [xmin, xmax], y0 );

h = @(x, y) -cos(x) + 2;
res = [x, y, h(x), abs(y - h(x))];

% partb
h1 = 0.25;

[x, z] = Euler( h1, x0, y0, xmax, g );
[y, z, h(x), abs(y - h(x)), abs(z - h(x))]





































