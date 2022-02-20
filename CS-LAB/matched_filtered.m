clear all; 
close all; 
clc; 
 
Fs = 8e3; 
Ton=1; 
Fstart=200; 
Fstop=500; 
t=0:1/Fs:Ton-1/Fs; 
x=sin(2*pi*(Fstart*t+(Fstop-Fstart)/(2*Ton)*t.^2));
y=zeros(1,2.5*Fs); 
y(1*Fs+1:1*Fs+1+length(x)-1)=x; 
yn=y+2*randn(size(y)); 
xmf=conj(fliplr(x)); 
yf=filter(xmf,1,yn); 
figure 
subplot(3, 1, 1) 
plot(y) 
title('noise free signal') 
subplot(3,1,2) 
plot(yn) 
title('noise signal') 
subplot(3,1,3) 
plot(yf) 
title('matched filtered signal') 
[val, ind]=max(abs(yf)); 
ind-length(xmf)