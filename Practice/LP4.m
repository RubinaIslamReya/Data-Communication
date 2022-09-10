fs = 64e3;
t = 0:1/fs:1-1/fs;
fundF = 1500;
fundA = 2;
powfund = fundA^2/2;
harmf = 3000;
harma = 1.5;
powharm = harma^2/2;
s = 0.1;
varnoise = s^2;
x = fundA*cos(2*pi*fundF*t) + harma*sin(2*pi*harmf*t) +s*randn(size(t));
SINAD = sinad(x)
SNR = snr(x)
 
