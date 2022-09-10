#Rubina Islam Reya
#ID=19-39811-1

#A

f=3981*20;
A1=19;
A2=11;
j1=91;
j2=30*(pi/180);

#B

#t=linspace(-.5,2,20)
t=(-(1.5/3981):1/f:(1.5/3981));
x1 = A1*cos((2*pi*3981*t) + j1) 
x2 = A2*cos(2*pi*(3981)*t + j2)
plot(t,x1,'r','Linewidth', 2)
hold on
#figure
plot(t,3*x2,'k','Linewidth', 1.5)
hold off
xlabel('t',"fontsize",20);
ylabel('y',"fontsize",20)
title('X1 & X2',"fontsize",20);
text(0.0002,10,'X1(t)',"fontsize",20);
text(0.00035,1,'X2(t)',"fontsize",20);
text(0.00022,1,'C',"fontsize",20);

#C

figure

#X1(t) leads X2(t) ; X1(t)reaches peak value at t= 0 but X2(t) reaches peak value after t= 0;

#X1(t) reaches peak value A1=19 at t=0.0 s
#X2(t)reaches peak value A2=11 at t=0.00022 s

#D
subplot(3,1,1);
plot(t,x1),grid on;
title('X1 ',"fontsize",20);
subplot(3,1,2);
plot(t,x2),grid on;
title('X2 ',"fontsize",20);

#E

subplot(3,1,3);
x3=x1+x2;
subplot(3,1,3);
plot(t,x3),grid on;
xlabel('t',"fontsize",20);
ylabel('y',"fontsize",20)
title('X3=X1+X2',"fontsize",20);


Magnitude = 19.8

