
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
l3=max(l1, l2) 
y=conv2(x,h,l3)
subplot(2,2,3)
stem(y) 
xlabel('time') 
ylabel('amplitude') 
title('circular convolution output') 