close all;
clc
f=5;
f2=10;
f=5;
x = [01 00 01 10 11 00]; % input signal ;
nx=size(x,2);
i=1;
while i<nx+1
t = i:0.001:i+1;
if x(i)==00
psk=sin(2*pi*f*t);
elseif x(i)== 01
psk=sin(2*pi*f*t+pi/2);
elseif x(i)==10
psk=sin(2*pi*f*t+pi);  
end;
plot(t,psk);
hold on;
grid on;
axis([1 9 -1 1]);
title('Rubina Islam Reya')
i=i+1;
end