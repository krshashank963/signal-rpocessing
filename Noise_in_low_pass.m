clc
clear
close all;
%symmetric
n = 50;
N = 50;
h = [];
for n = 0:2*N
    if n==0
        hn = 1/3;
        
    
    else
        hn = 1/(n*pi)*(sin(2*n*pi/3));
        
    end    
    h = [h,hn];
end
rec = audiorecorder;
disp('start recording')
recordblocking(rec, 5);
disp('End of Recording.');

data = getaudiodata(rec);
audiowrite('record1.wav',data,50)
d =audioread('record1.wav');

output1 = conv(d,h);
figure("Name","  noise");
plot(output1);

