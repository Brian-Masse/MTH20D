function [x, y] = Euler(h, x0, y0, interval_length, func)
% uses Euler's method to approximate a solution to the given differential
% equation
% h is the interval step, x0 y0 are the intitial values

nsteps = floor( interval_length / h) + 1;
x = zeros( nsteps, 1 );
y = zeros( nsteps, 1 );

x(1) = x0;
y(1) = y0;

for i=2:nsteps
    y(i) = y(i - 1) + h* func(x(i-1), y(i-1));
    x(i) = x(i - 1) + h;

end