
clc
clear all
close all

 f = 1000;
 fc = f*8; 
 Ta=1/f; % Time period of modulating signal
t=0:Ta/999:6*Ta ;
s = 5;
 m = sin(2*pi*f*t); 
 figure(1)
subplot(4,1,1); 
plot(t,m), grid on;% Graphical representation of Modulating signal
title ( ' Modulating Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   '); 

yc=sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,yc), grid on;% Graphical representation of carrier signal
title ( '  Carrier Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   '); 

xc = cos(2*pi*fc*t + s*m);
subplot(4,1,3); 
plot(t,xc), grid on;% GrapS hical representation of Modulating signal
title ( ' Frequency modulated Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   '); 

subplot(4,1,4); 
plot(t,m), grid on;
title ( ' Demodulated Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   '); 