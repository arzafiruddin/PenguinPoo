function [T, R] = ProjectileKinem(v0, theta, y0)
% Ameen Rasheed Zafiruddin
% ameenrz@email.unc.edu
% 05/26/2021
% ProjectileKinem.m
%
% Calculates the time of flight and range of a projectile launched
% (assuming no external forces).
% Inputs: v0 -- initial launch velocity (m/s)
%         theta -- initial launch angle (degrees)
%         y0 -- initial launch height (m)
% Outputs: T -- time of flight (s)
%          R -- range of flight (m)

%% Declarations
g = -9.8; % surface acceleration from gravity (m/s)

%% Calculations
vx0 = v0.*cosd(theta);
vy0 = v0.*sind(theta);

T = ((-vy0) - sqrt((vy0.^2) - (2.*g.*y0)))./g;
R = vx0 .* T;

end