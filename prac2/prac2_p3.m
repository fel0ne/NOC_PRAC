%====== 9 ========
A = 4;
f = 5;
f_m = 10*f;
dt = 0.01; 
t = -pi:dt:pi;
s = A*sin(f*t);
s_m = A*sin(f_m*t);
s_sum = s.*s_m ./A; 
subplot(3,2,1);
plot(t,s_sum);
hold on;
plot(t,s, Color="r");
title("Задание 9")
xlabel("t");
ylabel("s(t)");
grid on;

%======== 10 ======

Nn = 1;
s_sum = s_sum+wgn(1,length(t),Nn);
subplot(3,2,2);
plot(t,s_sum);
hold on;
plot(t,s, Color="r");
title("Задание 10")
xlabel("t");
ylabel("s(t)");
grid on;


%====== 11 ======
s_fft = fft(s_sum);
N = length(t);
freq = (0:N-1)*(1/dt/N);
subplot(3,2,3);
plot(freq,abs(s_fft));
title("Задание 11")
xlabel("t");
ylabel("s(t)");
grid on;

%====== 12 ======
s_sum = s_sum*f_m;
subplot(3,2,4);
plot(t,s_sum);
title("Задание 12")
xlabel("t");
ylabel("s(t)");
grid on;
%====== 12 ======
[b,a] = butter(4,0.04,'low');
s_sum = filter(b,a,s_sum);
subplot(3,1,3);
plot(t,s_sum);
title("Задание 13")
xlabel("t");
ylabel("s(t)");
grid on;