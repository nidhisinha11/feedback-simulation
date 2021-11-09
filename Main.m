%Author: Nidhi Sinha
%This code simulates a general feedback system with the low-pass filter in
%the feed-forward path
clear all
clf
Nt = 1000;
m = 50; %constant
q = zeros(Nt + m + 1, 1); %initialize the possible values of q
r = zeros(Nt + m + 1, 1); %initialize the possible values of r
T_D = 1; %delay filter
T_F = 10 * T_D; %low-pass filter
delta_t = T_D/m; %change over time
Gstar = 16.5;
G = 2*Gstar;
finaltime = 0; %timer initiliazed to 0 
for n = (m+1):(Nt + m)
    t = (n - m) * T_D; 
    r(n + 1) = delta_t * (G*(s(t) - r(n - m)) - r(n))/T_F + r(n);
    finaltime = finaltime + delta_t; %reset timer
end

timespan = 0:delta_t:finaltime;

hold on
plot(timespan, r(m + 1: Nt+m), 'linewidth', 2);
xlabel('Time')
ylabel('Feedback Frequency')
xlim([0, 20])
ylim([-20, 20])
hold off 