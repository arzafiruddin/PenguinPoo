% Ameen Rasheed Zafiruddin
% ameenrz@email.unc.edu
% 05/27/2021
% PA2_Zafiruddin.m
%
% Calculates the required initial velocity and angles to hit a specified
% target distance and plots the motion of two different scenarios.

clear
clc
close all

%% Declarations
% Variables
h = 1.0; % initial height (m)
targetX = 0.6; % target distance (m)

v0AMin = 0; % min possible initial launch velocity for Part A (m/s)
v0AMax = 3; % max possible initial launch velocity for Part A (m/s)
v0ASub = 500000; % number of possible velocities between min and max for Part A
thetaA = 45; % initial launch angle for Part A (degrees)

v0B = 2; % initial launch velocity for Part B (m/s)
thetaBMin = -90; % min possible initial launch angle for Part B (degree)
thetaBMax = 90; % max possible initial launch angle for Part B (degree)
thetaBSub = 500000; % number of possible angles between min and max for Part B

plotSub = 500000; % number of plotted points per line in Plot iii

p = 1141; % mass density of penguin feces (kg/m^3)
r = 0.004; % radius of penguin sphincter (m)
R = 0.1; % radius of penguin stomach (m)

% Prints out intputs to Command Window (commented out to avoid extraneous
% output deductions)
%   fprintf("------------------ INPUTS ------------------\n")
%   fprintf("Initial Height                = %.2f m\n", h)
%   fprintf("Target Distance               = %.2f m\n", targetX)

%% Part A Calculations (Fixed Angle)

    % A.i. ALL POSSIBLE INITIAL VELOCITIES WITH FIXED ANGLE

% Creates array of possible velocities
v0A = linspace(v0AMin, v0AMax, v0ASub);
% Determines array of ranges/ToFs from array of possible velocities
[tA, rA] = ProjectileKinem(v0A, thetaA, h);

    % A.ii. INITIAL VELOCITY THAT REACH targetX

% v0ALimit/rALimit curve -- only the section of v0A/rA curve BELOW targetX
rALimit = rA(rA <= targetX);       % y of LOWER curve
v0ALimit = v0A(1:length(rALimit)); % x of LOWER curve
% Uses max() function to find the highest point on the LOWER curve (which is
% the INITIAL VELOCITY that reaches targetX)
[v0AInt, v0AIntIndex] = max(v0ALimit);
% debug plot of LOWER curve (uncomment to view)
%   figure(2)
%   plot(v0ALimit, rALimit, [v0AMin,v0AMax], [targetX,targetX])

%% Part A Outputs (Fixed Angle)
% Plots v0A vs rA
figure(1)
hold on
plot(v0A, rA, 'LineWidth', 1)
plot([v0AMin,v0AMax], [targetX,targetX])
hold off
% Customizes plot
xlabel('initial velocity (m/s)')
ylabel('range (m)')
title('[Part A] Initial Velocities vs Ranges with a Fixed Initial Angle')
axis([v0AMin, v0AMax, 0, 1.1*max(rA)])
grid()

% Prints out results to Command Window
fprintf("------------------ PART A ------------------\n")
fprintf("Required Initial Velocity     = %.2f m/s\n", v0AInt)
fprintf("Fixed Initial Angle           = %.2f%c\n", thetaA, 176)

%% Part B Calculations (Fixed Velocity)

    % B.i. ALL POSSIBLE INITIAL ANGLES WITH FIXED VELOCITY

% Creates array of possible angles
thetaB = linspace(thetaBMin, thetaBMax, thetaBSub);
% Determines array of ranges/ToFs form array of possible velocities
[tB, rB] = ProjectileKinem(v0B, thetaB, h);

    % B.ii. INITIAL ANGLES THAT REACHES targetX

% Determines index of peak of thetaB/rB parabola (this will be the splitting
% point, guaranteeing there will only be ONE intercept on each side)
[rBMax, rBMaxIndex] = max(rB);

    % LOWER ANGLE (LEFT) INTERCEPT
% thetaB1/rB1 curve -- only the section of thetaB/rB curve to the LEFT of the peak
rB1 = rB(1:rBMaxIndex);         % y of LEFT curve
thetaB1 = thetaB(1:rBMaxIndex); % x of LEFT curve
% thetaB1Limit/rB1Limit curve -- only the section of thetaB1/rB1 curve BELOW targetX
rB1Limit = rB1(rB1 <= targetX);             % y of LOWER-LEFT curve
thetaB1Limit = thetaB1(1:length(rB1Limit)); % x of LOWER-LEFT curve
% Uses max() function to find the highest point on the LOWER-LEFT curve
% (which is the LOWER ANGLE that reaches targetX)
[thetaB1Int, thetaB1IntIndex] = max(thetaB1Limit);
% debug plot of LOWER-LEFT curve (uncomment to view)
%   figure(4)
%   plot(thetaB1Limit, rB1Limit, [thetaBMin,thetaBMax], [targetX,targetX])

    % UPPER ANGLE (RIGHT) INTERCEPT
% thetaB2/rB2 curve -- only the section of thetaB/rB curve to the RIGHT of the peak
rB2 = rB(rBMaxIndex:end);         % y of RIGHT curve
thetaB2 = thetaB(rBMaxIndex:end); % x of RIGHT curve
% thetaB2Limit/rB2Limit curve -- only the section of thetaB2/rB2 curve ABOVE targetX
rB2Limit = rB2(rB2 >= targetX);             % y of UPPER-RIGHT curve
thetaB2Limit = thetaB2(1:length(rB2Limit)); % x of UPPER-RIGHT curve
% Uses max() function to find the lowest point on the UPPER-RIGHT curve
% (which is the UPPER ANGLE that reaches targetX)
[thetaB2Int, thetaB2IntIndex] = max(thetaB2Limit);
% debug plot of UPPER-RIGHT curve (uncomment to view)
%   figure(5)
%   plot(thetaB2Limit, rB2Limit, [thetaBMin,thetaBMax], [targetX,targetX])

%% Part B Outputs (Fixed Velocity)
% Plots thetaB vs rB
figure(3)
hold on
plot(thetaB, rB, 'LineWidth', 1)
plot([thetaBMin,thetaBMax], [targetX,targetX])
hold off
% Customizes plot
xlabel('initial angle (degrees)')
ylabel('range (m)')
title('[Part B] Initial Angles vs Ranges with a Fixed Initial Velocity')
axis([thetaBMin, thetaBMax, 0, 1.1*max(rB)])
grid()

% Prints out results to Command Window
fprintf("------------------ PART B ------------------\n")
fprintf("Fixed Initial Velocity        = %.2f m/s\n", v0B)
fprintf("Required Initial Angle (Low)  = %.2f%c\n", thetaB1Int, 176)
fprintf("Required Initial Angle (High) = %.2f%c\n", thetaB2Int, 176)

%% Part C Calculations (Visualizing Motion)
% Determines the coordinates of projectile motion for each scenario
[xA, yA] = ProjectilePosit(v0AInt, thetaA, h, plotSub);
[xB1, yB1] = ProjectilePosit(v0B, thetaB1Int, h, plotSub);
[xB2, yB2] = ProjectilePosit(v0B, thetaB2Int, h, plotSub);

%% Part C Outputs (Visualizing Motion)
% Plot projectile motion of all scenarios
figure(6)
plot(xA, yA, xB1, yB1, xB2, yB2, 'LineWidth', 1)
% Customizes plot
xlabel('x distance (m)')
ylabel('y distance (m)')
title('[Part C] x Distance vs y Distance for Scenarios A, B1, and B2')
axis([0, 1.1*max([xA,xB1,xB2]), 0, 1.1*max([yA,yB1,yB2])])
legend('A (Fixed Angle)','B1 (Lower Angle of Fixed Velocity)',...
    'B2 (Higher Angle of Fixed Velocity)','Location','southwest')
grid()

% Inserts image of a defacating penguin on plot [Part C]
yIMG = ((0.92 - 0.1)/max([yA,yB1,yB2]))*h; % auto positions y-axis of IMG
axes('pos',[-.08, yIMG, .3, .18])
imshow('PenguinIMG.png')

% Prints out confirmation to Command Window (commented out to avoid
% extraneous output deductions)
%   fprintf("------------------ PART C ------------------\n")
%   fprintf("[Projectile Motion for A and B plotted]\n")

%% Part D Calculations (Abdominal Pressure)
% Calculates the required abdominal pressure for each scenario
pA = AbdPressurePenguin(p, r, R, v0AInt, thetaA, h);
pB1 = AbdPressurePenguin(p, r, R, v0B, thetaB1Int, h);
pB2 = AbdPressurePenguin(p, r, R, v0B, thetaB2Int, h);

%% Part D Outputs (Abdominal Pressure)
% Prints out results to Command Window
fprintf("------------------ PART D ------------------\n")
fprintf("Part A Abdominal Pressure         = %.2f kPa\n", pA)
fprintf("Part B1 Abdominal Pressure (Low)  = %.2f kPa\n", pB1)
fprintf("Part B2 Abdominal Pressure (High) = %.2f kPa\n", pB2)