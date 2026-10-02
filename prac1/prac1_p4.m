clear all;
c = 0;
a = 5;
for s = 1:a*10
    c =c + s;
end
c = 0;
for s = 1:a*10
    if mod(s,2) ~= 0
        disp(s);
        c =c + s;
    end
end
c = 0;
temp = 1;
while x < a
    c = c + temp;
    temp = temp + 1;
end