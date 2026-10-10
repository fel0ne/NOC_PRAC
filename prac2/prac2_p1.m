%======= 1 ======
dt = 0.1;
t = -pi:dt:pi;
s = sin(t);
subplot(2,2,1);
plot(t,s);
title("Задание 1")
xlabel("t");
ylabel("s(t)");
grid on;
%======= 2 ======
f = 5;


s = sin(t*f);
subplot(2,2,2);
plot(t,s);
title("Задание 2")
xlabel("t");
ylabel("s(t)");
grid on;
%====== 3 ======



subplot(2,4,5);

stem(t,s);
title("Задание 3(stem)");
subplot(2,4,6);
stairs(t,s);
title("Задание 3(stairs)");
%====== 4 ======
f = 5*2* pi;
dt = 0.015;
t = -pi:dt:pi;
s = sin(t*f);
Fs = 1 / dt;
N = length(s);
fx = fft(s);
frequencies = (0:N-1)*(Fs/N); 

subplot(2,2,4);
plot(frequencies, abs(fx));
title("Задание 4");
xlabel("f(ghz)");
ylabel("A"); 
grid on;