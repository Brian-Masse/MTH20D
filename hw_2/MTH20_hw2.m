%% MTH20D MatLab HW 2
 
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 
 

%% Examples
f = @(t,y) (1 - t^2)*exp(y);
% slopefield(f, [-4, 4], [-3.5, 3.5], 20);
% 
% drawode( f, [-4, 4], 1, -1 )

%% Section 2.2

lowerBound = -5;
upperBound = 5;

yUpperBound = -20;
yLowerBound = 60;

f2 = @(t, y) ( cos(t) * sin(t)) * ( 1 - y);

slopefield( f2, [lowerBound, upperBound], [-20, 20], 20 )
drawode( f2, [lowerBound, upperBound], 1, 2 );
drawode( f2, [lowerBound, upperBound], 3, 1 );
drawode( f2, [lowerBound, upperBound], 1, 3 );

close all;

% 2.3

lowerBound = 0.5;
upperBound = 2.5;

newtonCooling = @(t, y) 3 * ( 69 - y ); 

slopefield( newtonCooling, [lowerBound, upperBound], [yLowerBound, yUpperBound], 20 )

title( "A=20, y(0)=1, y(0)=5, y(0)=10" )
drawode( newtonCooling, [lowerBound, upperBound], 1, 1 );
drawode( newtonCooling, [lowerBound, upperBound], 1, 5 );
drawode( newtonCooling, [lowerBound, upperBound], 1, 10 );



% 2.4

slopefield( newtonCooling, [lowerBound, upperBound], [yLowerBound, yUpperBound], 20 )

drawode( newtonCooling, [lowerBound, upperBound], 0, -6 );

yline( 39 )

close all;

%% Section 2.3

% drawing phase planes to visualize solutions to systems of differential
% equations

% 2.5
g = @(t, Y) [3; 3];

lowerBound = -5;
upperBound = 5;

tmin = -5;
tmax = 5;

phaseplane(g, [lowerBound, upperBound], [lowerBound, upperBound], 20)

hold on;
drawphase(g, tmax, 0, 0);
drawphase(g, tmax, 2.5, 0);
drawphase(g, tmax, -2.5, 0);
hold off;
close all;

% 2.6
g = @(t, Y) [ Y(2); -Y(1) ];
lowerBound = -10;
upperBound = 10;

phaseplane(g, [lowerBound, upperBound], [lowerBound, upperBound], 20);

hold on;
drawphase(g, tmax, 0, 5);
drawphase(g, tmax, 5, 5);
drawphase(g, tmax, -5, -2.5);
hold off;
close all;

% 2.7
tmin = -10;
tmax = 10;

f = @(x, y) cos(x) + sin(y);

slopefield(f, [lowerBound, upperBound], [lowerBound, upperBound], 50);

drawode(f, [tmin, tmax], 0, 0 );
drawode(f, [tmin, tmax], 10, -5 );
drawode(f, [tmin, tmax], 2, -3.4 );

g = @(t, Y) [ 1; cos(Y(1)) + sin(Y(2)) ];

fig = figure(3);
phaseplane( g, [lowerBound, upperBound], [lowerBound, upperBound], 50);

hold on;
drawphase(g, tmax, 0, 0);
drawphase(g, tmax, 0, -5);
drawphase(g, tmax, 0, -3.4);
hold off;
close all;

%% Section 2.5
% 2.8

g = @(t, Y) [Y(1)*(3 - 1*Y(2) ); 2 * Y(2)*(Y(1) - 3)];

lowerBound = -1;
upperBound = 20;
tmax = 25;

phaseplane(g, [lowerBound, upperBound], [lowerBound, upperBound], 50);

hold on;
drawphase( g, tmax, 10, 10 );
drawphase( g, tmax, 0, 10 );
drawphase( g, tmax, 5, 3 );
hold off;










