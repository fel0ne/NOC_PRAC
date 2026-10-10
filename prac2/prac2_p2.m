%======= 5 =======

dt = 0.01;
Nn = 1;
t = 0:dt:2*pi;
f = 5;
s = 4*sin(t*f);
s = s+wgn(1,length(t),Nn);
subplot(2,2,1);
plot(t,s);

title("Задание 5")
xlabel("t");
ylabel("s(t)");
grid on;



%======= 6 =======
f_fft = 5*2*pi;
dt = 0.015;
ts = -pi:dt:pi;
s_fft = sin(f_fft*ts)+wgn(1,length(ts),Nn);
fx_fft = fft(s_fft);
N = length(ts);
fs = 1/dt;
freq = (0:N-1)*(fs/N);
subplot(2,2,2);
plot(freq,abs(fx_fft));
title("Задание 6")
xlabel("t");
ylabel("s(t)");
grid on;

%======= 7-8 =======

L = 5;
a = 1;
b = 1/L * ones(1,L);
s = filter(b,a,s);

subplot(2,2,3);
plot(t,s);
title("Задание 7-8")
xlabel("t");
ylabel("s(t)");
grid on;

