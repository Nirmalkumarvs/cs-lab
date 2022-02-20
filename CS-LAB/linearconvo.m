clc
clear all
close all
x=[5, 1, 2, 2, 1, 6, 7, 8, 9, 0, 1, 2]
subplot(2,2,1)
stem(x)
xlabel('time')
ylabel('amp')
title('input signal')
h=[3, 0,1,6,0,1,8,1,8,2,2,7]
subplot(2,2,2)
stem(h)
xlabel('time')
ylabel('amp')
title('impulse signal')
l1=12
l2=12
l3=l1+l2-1
y=conv(x,h)
subplot(2,2,3)
stem(y)
xlabel('time')
ylabel('amp')
title('linear convolution output')
