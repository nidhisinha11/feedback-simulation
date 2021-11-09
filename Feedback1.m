%Author: Charles Peskin
N = 1000; 
tpmax = 0.99 * pi/2; 
thetaprime = 0:(tpmax/N):tpmax; 
Gstar = 1./cos(thetaprime);
X = tan(thetaprime)./(pi - thetaprime); 
plot(X, 0, X, Gstar, 'linewidth', 2)
xlim([0,10])
ylim([0,20])