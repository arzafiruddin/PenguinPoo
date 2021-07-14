function [Pa] = AbdPressurePenguin(p, r, R, v0, theta, y0)
% Ameen Rasheed Zafiruddin
% ameenrz@email.unc.edu
% 05/27/2021
% AbdPressurePenguin.m
%
% Calculates the required output abdominal pressure of penguins based on 
% "Projectile Trajectory of Penguin’s Faeces and Rectal Pressure Revisited"
% (H. Tajima, F. Fujisawa, 2007).
% Input: p -- mass density of penguin feces (kg/m^3)
%        r -- radius of penguin sphincter (m)
%        R -- radius of penguin stomach (m)
%        v0 -- initial launch velocity of ejected feces (m/s)
%        theta -- initial launch angle of ejected feces (degrees)
%        y0 -- initial height of penguin (m)
% Output: Pa -- abdominal pressure of penguin (kPa)

%% Declarations
g = -9.8; % surface acceleration from gravity (m/s)
C = 0.611; % typical coefficient of contraction

%% Calculations
vx0 = v0.*cosd(theta);
vy0 = v0.*sind(theta);

T = ((-vy0) - sqrt((vy0.^2) - (2.*g.*y0)))./g;

V = ((C*pi*(r^2))/(2*g)) * ( (vy0*v0) - ( (vy0-(g*T)) * sqrt((((g*T)-vy0)^2) + (vx0^2)) ) -...
    ( (vx0^2) * log( (sqrt((((g*T)-vy0)^2)+(vx0^2)) - (g*T) + vy0)/(v0 + vy0) ) ) );

Pa = ( (1/2)*(p)*(v0^2) ) - ( ((p*g)/(pi*(R^2)))*V );

Pa = Pa/1000; % Converts from Pa to kPa

end