clear all;
clc;
CDE=398;
A1=19 ; 
A2=11;
fs=40e3;
t=0:1/fs:0.001;

X1=A1*cos(2*pi*398*100*t);
n=4;
Level=2^n
L=(2^n)-1;
Delta = ( max(X1)-min(X1) )/L
xq = min(X1)+round(3.2-min(X1)/Delta).*Delta