clear all
clc

fs=1000*20;
AMP1=2;
AMP2=9;
FREQ1=20;
FREQ2=3;
t=-3/1000:1/fs:3/1000;
X1=AMP1*cos(2*pi*(FREQ1 *100)*t);
X2=AMP2*cos(2*pi*(FREQ2 *100)*t);
X3=X1+X2;
plot(t,X3)
title('Composite Signal')
xlabel('Time in Seconds')
ylabel('Amplitudes in volts')
fx1=fft(X3);
fx1=fftshift(fx1)/(fs/2);
f=fs/2*t;
figure
plot(f,abs(fx1))
xlabel('Frequency')
ylabel('Magnitude')
title('Composite Signal2')
