clear all;
close all;
clc;
t=-10:0.01:10;
T=4;fm=1/T;
x=cos(2*pi*fm*t);
subplot(2,2,1);plot(t,x,'linewidth',3);
xlabel('time');ylabel('amplitude');
grid;
title(' input signal');

n1=-4:0.8:4;
fs1=1.6*fm;
fs3=8*fm;
x1=cos(2*pi*fm/fs1*n1);

subplot(2,2,2);stem(n1,x1,'linewidth',3);
xlabel('number of samples');ylabel('amplitude');
hold on;
subplot(2,2,2);plot(n1,x1,'linewidth',3);
xlabel('time');ylabel('amplitude');
grid;
title('under sampling');


n3=-20:1:20;
x3=cos(2*pi*fm/fs3*n3);

subplot(2,2,3);stem(n3,x3,'linewidth',3);
hold on;
subplot(2,2,3);plot(n3,x3,'linewidth',3);
xlabel('number of samples');ylabel('amplitude');
xlabel('time');ylabel('amplitude');
grid;
title('over sampling');