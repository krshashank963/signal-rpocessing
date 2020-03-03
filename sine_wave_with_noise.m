t =-2*pi:0.1:2*pi;
y = sin(t);
rec = audiorecorder;
disp('start recording')
recordblocking(rec, 5);
disp('End of Recording.');
play(rec)
data = getaudiodata(rec);
audiowrite('record1.wav',data,50)
d =audioread('record1.wav');
figure
plot(y,'r')
hold on
plot(d,'b')
hold off


