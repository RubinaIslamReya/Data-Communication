close all;
clear all;
clc;
fs = 10e3;
f = 20;
t = 0:1/fs :0.1;
signal = 15*sin(2*pi*f*t);
partition = [ -14.52 , 14.52 ,31 ];
codebook = -15:15:32;
[i , xq] = quantiz ( signal, partition, codebook );
plot(t,signal,'x',t,xq,'.')
legend('Original Signals','Quantized Signal')
title('Rubina Islam Reya')

