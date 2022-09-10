fx = fft(x);
fx = fftshift(fx)/(fx/2);
f = (fs/2)*linspace(-1,1,fs);
plot(f,abs(fx))
axis([-100 100 0 20])
title('Rubina Islam Reya')
xlabel('Frequency')
ylabel('Magnitude')
