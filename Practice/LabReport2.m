clear all
clc

fs=1000*20;
A1=10;
A2=11;
C=3;
F=1;
t=-3/1000:1/fs:3/1000;
X1=A1*cos(2*pi*(C *100)*t);
X2=A2*cos(2*pi*(F *100)*t);
X3=X1+X2;
plot(t,X3)
title('Composite Frequency')
xlabel('Time in Seconds')
ylabel('Amplitudes in volts')



fx1=fft(X3);
fx1=fftshift(fx1)/(fs/2);
f=fs/2*t;
figure
plot(f,abs(fx1))
xlabel('Frequency')
ylabel('Magnitude')
title('Magnitude of FFT of Cosine')

figure

n=6;
L=(2^n)-1;
delta= (max(X3)-min(X3))/L;
i= round ((X3-min(X3))/delta);
xq= min(X3)+ i*delta;
subplot(3,1,1)
plot(t,X3,'r')
title('Original Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2)
stem(t,X3,'b')
title('Sampled Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,3)
stairs(t,xq,'b')
axis([0,0.001])
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')
