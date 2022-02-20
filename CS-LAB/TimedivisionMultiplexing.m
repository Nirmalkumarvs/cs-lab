
clear all; 
close all; 
clc; 

n = input('Enter the number of signal to multiplex'); 
k = input('Enter the number of bits in each signal');  

for i=1:n 
  a=input('Enter the data bits');
  for j=1:r
    a1(i,j)=a(1,j)
  end
end 

figure; 
for i=1:n 
  for j=1:r 
    a2(1,j) = a1(i,j)
  end  
  subplot(n,1,i); 
  stem(a2); title('input signal');
end
