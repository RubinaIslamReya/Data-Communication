close all;
clc;

A1=19 ; 
A2=11 ;
s=11;
A=(A1+A2)/2;
powfund=A^2/2;
varnoise =s^2;
defSNR = 10*log10(powfund/varnoise)

fs=100;
t=0:1/fs:1-1/fs;
x=A1*sin(2*pi*3*100*t) + A2*cos(2*pi*1*t) +(s*randn(size(t)));
A=(A1+A2)/2;
powfund=A^2/2;
varnoise =s^2;
bandwidth = 500-300
capacity = bandwidth*log2(1+SNR)

X=round(capacity/(2*bandwidth));
Level = 2^X
