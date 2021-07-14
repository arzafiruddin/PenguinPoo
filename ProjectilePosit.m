function [x, y] = ProjectilePosit(v0, theta, y0, div)
% Ameen Rasheed Zafiruddin
% ameenrz@email.unc.edu
% 05/26/2021
% ProjectilePosit.m
%
% Provides the position of a projectile over time as a vector of x and y
% positions.
% Inputs: v0 -- initial launch velocity (m/s)
%         theta -- initial launch angle (degrees)
%         y0 -- initial launch height (m)
%         div -- number of time subdivisions
% Outputs: x -- vector of x positions over time (m)
%          y -- vector of y positions over time (m)

%% Declarations
g = -9.8; % surface acceleration from gravity (m/s)

%% Calculations
vx0 = v0.*cosd(theta);
vy0 = v0.*sind(theta);

T = ((-vy0) - sqrt((vy0.^2) - (2.*g.*y0)))./g;

t = linspace(0, T, div);

y = (y0) + (vy0.*t) + ((1/2).*g.*(t.^2));
x = (vx0.*t);

end