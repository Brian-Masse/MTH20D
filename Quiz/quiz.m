clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Brian Masse';
id = 'A17991084';
hw_num = 5;

tic

%% Reference

% help drawode
% help slopefield
% help phaseplane
% help drawphase
% help euler

%% Question 1

A = [1, 1, 0; -2, -1, 2; 2, 1, -1];
[eigVec, eigVal] = eig(A)

%% Question 2
g = @(x, y) sin(x);
[x, y] = ode45( g, [0, 20], 3 );
y(25);
x(25);


plot(x, y)

%% Question 3
g = @(t, Y) [ -Y(2); sin(Y(1)) ];

phaseplane( g, [-4, 6], [-4, 4], 20 )

toc