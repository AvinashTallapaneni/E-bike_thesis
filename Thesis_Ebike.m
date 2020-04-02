%% Modelling, simulation and verification of an Ebike with force interface
%% Avinash Tallapaneni
clear all
clc
%% Bike dynamics

Rho_air= 1.225;
C_d=0.9;
A_d= 0.4;
Static_Friction_Coefficient =0.0015;
Dynamic_Friction_Coefficient= 0.0015;
Cyclist_weight=85;
Vehicle_mass = 25;
Trailer_mass = 50;
g = 9.81;
Wheel_mass = 0.25;
Tire_mass = 0.25;
Abs = 1;
Bb=0.2;
Wheel_Radius = 0.3;
F_Rider = 100;
Wheel_Inertia=0.0225;
Braking_Pressure=100;
Crank_Length = 0.150;
Angle_of_crank = [0:1:360;0:1:360;]';
Number_of_brake_pad = 2;
Coefficient_of_Brake_friction = 0.9;
Effective_Radius_of_Disc = 0.16;
Outer_Radius_of_Brake = 0.18;
Inner_Radius_of_Brake = 0.14;
Disc_Mass=0;
Heat_capacity=0;
Surface_Temp=0;
Ambient_Temp=0;
Thermal_Conductivity=1;

%% Motor specification
Motor_torque_constant = 0.75; % NM/A
Kb = (51.7/(1000*2*pi/60)); %or  V/Wm (wm in rps) volt/rps
Jm =10.2 *10^-3; %kgm^2
Bm = ((Motor_torque_constant)*(17)/(1000*2*pi/60));
Motor_resistance =88*10^-2; %ohm
L = 0.36*10^-3;% H(henry)
alpha_Conductor =0.0040;
Ref_Temp = 25;
Alpha_Magnet = -0.0020;

%% battery specification
Internal_Resistance =95*10^-3; %ohm
capacity =19.5 ; %Ah
SOC_initial = 100;
Polarization_Resistance = 95*10^-3;
Polarization_Capacitance = 1*10^-7;
