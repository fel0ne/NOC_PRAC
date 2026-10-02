clear all;
a = 5;
b = 28;
c = b - a;
d = c*b - a;
e = a + 1i*b;

%====2======
N = c+1;
f = 1:N;
g = 1:N;
h = f + g;
j = d *h;
v = 1:N;

v = v';
disp(v)
disp(v(3,1))
