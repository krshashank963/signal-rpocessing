%
clc
clear
close all;
%symmetric
n = 50;
N = 50;
h = [];
for n = -N:N
    if n==0
        hn = 1/3;
        
    
    else
        hn = 1/(n*pi)*(sin(2*n*pi/3));%non causal becoz not zero for n<0
        
    end    
    h = [h,hn];
end
t = 0:1:101;
a = sin(t*pi/3);
b= sin(t*pi/8);
c = sin(t*0.8*pi);
d = sin(t*pi/6);

output1 = conv(a,h);
output2 = conv(b,h);
output3 = conv(c,h);
output4 = conv(d,h);
%input
figure("Name"," sin(n*pi/3)");
plot(a);
figure("Name","sin(n*pi/8)");
plot(b);
figure("Name"," sin(n*pi*0.8)");
plot(c);
figure("Name","sin(n*pi/6)");
plot(d);


%output
figure("Name"," o/p sin(n*pi/3)");
plot(output1);
figure("Name","o/p sin(n*pi/8)");

plot(output2);
figure("Name"," o/p sin(n*pi*0.8)");
plot(output3);
figure("Name","o/p sin(n*pi/6)");
plot(output4);
freqz(h);
