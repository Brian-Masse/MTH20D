%% MTH20D MatLab HW 4

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 
    
%% Problem 4.1

B = [1.2, 2.5; 4, 0.7];
[eigValues, eigVectors] = eig( B )


%% Example 4.1
% expressions comprising the system of differential equations
g = @(t,Y) [-2.1*Y(1) + 1.2*Y(2); 0.8*Y(1) - 3.4*Y(2)];

% different values to plot
P = [-3,3; -3,0; -3,2; -2,-3; -1,3; 0,-3; 1,4; 2,-3; 4,-2; 4,0; 4,2];

% phaseplane(g, [-4.5,4.5], [-4.5,4.5], 16)
% hold on
% 
% for i=1:size(P,1)
%     drawphase(g, 50, P(i,1), P(i,2))
% end
% hold off

%% Exercise 4.2
A = [ 3, 4; -1, -2 ];

[eigVectors, eigValues] = eig( A );

c1 = 2;
c2 = 4;
t = 100;

% general solution
y1 = c1 * exp(1) ^ ( eigValues(1, 1) * t ) * eigVectors(: , 1);
y2 = c2 * exp(1) ^ ( eigValues(2, 2) * t ) * eigVectors(: , 2);
y = y1 + y2;

% plotting the equations
g = @(t,Y) [ 3*Y(1) + 4*Y(2); -Y(1) - 2*Y(2) ];

yrange = [-10, 10];
xrange = [-40, 40];

phaseplane(g, xrange, yrange, 50);
hold on; box on; grid on;

P = [-3,3; -3,0; -3,2; -2,-3; -1,3; 0,-3; 1,4; 2,-3; 4,-2; 4,0; 4,2];

for i=1: size(P, 1)
    drawphase(g, 100, P(i, 1), P(i, 2));
end 
hold off
close all;

%% Exercise 4.3

A = [2.7, -1; 4.1, 3.7];

[eigVectores, eigValues] = eig( A );

% general solution
y1 = c1 * exp(1) ^ ( eigValues(1, 1) * t ) * eigVectors(: , 1);
y2 = c2 * exp(1) ^ ( eigValues(2, 2) * t ) * eigVectors(: , 2);
y = y1 + y2;

% plotting the equations
g = @(t, Y) [ 2.7*Y(1) - Y(2); 4.1*Y(1) + 3.7*Y(2) ];

yrange = [-10, 10];
xrange = [-10, 10];

phaseplane( g, xrange, yrange, 50 );
hold on; box on; grid on;

P = [-3,3; -3,0; -3,2; -2,-3; -1,3; 0,-3; 1,4; 2,-3; 4,-2; 4,0; 4,2];
 
for i=1: size(P, 1)
    drawphase(g, 100, P(i, 1), P(i, 2));
end 
hold off
% close all;

%% Exercise 4.4

A = [1.25, -0.97, 4.6; -2.6, -5.2, -0.31; 1.18, -10.3, 1.12];

[eigVectors, eigValues] = eig(A);


%% Exercise 4.5

A = [-0.0558 -0.9968 0.0802 0.0415; 0.598 -0.115 -0.0318 0; -3.05 0.388 -0.465 0; 0 0.0805 1 0];
B = [0.01; -0.175; 0.153; 0];

[eigVectors, eigValues] = eig(A);

%% Exercise 4.6

F = [ 0, 2.6, 0 -0.09 ];
C = A + B*F;

[eigVectors, eigValues] = eig(C);


















