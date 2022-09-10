fs = 1000;
t = 0:1/fs:1-1/fs;
f1 = 10;
f2 = 20;
f3 = 30;
A1 = 15;
A2 = 10;
A3 = 5;
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x3 = A3*sin(2*pi*f3*t);
plot(t,x1)
hold on
plot(t,x2)
hold on
plot(t,x3)
hold off
title('Rubina Islam Reya')
xlabel('Time')
ylabel('Amplitude')

