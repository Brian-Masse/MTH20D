%% MTH20D MatLab HW 1
 
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 
 
%% Problem 1
 
x = 50;
b = 4;
logb = log( x ) / log(b);
 
%% Problem 2
 
m = -3:0.4:12;
 
%% Problem 3
 
z = 25 - ( 100 - (7 * exp(5+cos(pi/3))) );
 
%% Problem 4
 
p4 = asin(3);
 
%% Problem 6
% function geomSeq(n, r)
%     p6ba = 1;
% 
%     for i=0: n-1
%         p6ba * r^i;
%     end
% end

% geomSeq(7, 1/4);

%% Problem 7

g = @(x) sin(x)*x;
% fplot( g, [-10, 10] );

%% Problem 8

syms s t

f8 = @(s, t) log( sin(s) + cos(t) );
diff( f8(s, t), t );
diff( f8(s, t), s );

%% Problem 9

dsolve( 'Dy=sin(t)', 'y(0)=3'  );

dsolve( 'Dy=sin(t) * log(y * t) * (asin(y / t))', 'y(0)=3'  );



