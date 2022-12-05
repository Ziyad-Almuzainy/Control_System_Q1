% Name:
%University Seat No:
%Prpblem Statement:
zeta=0.5;%Define Zeta
wn=6;%Enter the value of natural frequency wn 
num=[36]; %Coefficient of Numerator 
den=[1 6 36]; %Coefficient of Denominator
G=tf (num, den) %Create the Transfer function
wd=wn*sqrt (1-zeta*zeta); %Calculation of damped frequency of oscillation
teta=atan (sqrt (1-zeta*zeta)/zeta); % Calaculation of teta 
tr=((pi-teta)/wd); %Calaculation of Rise Time
tp=pi/wd; %Calaculation of Peak Time
Mp=exp(-zeta*pi/sqrt (1-zeta*zeta)) * 100; % Calaculation of Peak Overshoot
ts=4/(zeta*wn); %Calaculation of Settling time for 2% tolerance band 
step(G) %Step response of second order system
xlabel('time (t)');
ylabel ('Response c(t) ');
title ('Step Response of Second Order System');
