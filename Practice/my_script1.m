x = linspace(0,2*pi,100);
y1 = sin(x);
y2 = sin(x-1);
plot(x,y1,'k','linewidth',0.1)
hold on
plot(x,y2,'g','linewidth',0.75)
hold off
xlabel('time')
ylabel('value')
title('Rubina')