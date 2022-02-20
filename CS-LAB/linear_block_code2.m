clc;
clear all;
close all;
k=input('enter the length of message word = ')
n=input('enter the length of codeword = ')
p=input('enter the length of parity matrix = ')
G=[eye(k) p]
m=input('enter the message word = ')
c=encode(m,n,k,'linear',G)
h=[p' eye(n-k)]
r=input('enter the received code = ')
s=r*h'
s_b=rem(r*h',2)
s_d=bi2de(s_b,'left-msb')
if(s_d==0)
disp('the received codeword is valid')
else
disp('the received codeword is invalid')
end 
%{ 
enter the length of message word = 3
k = 3
enter the length of codeword = 6
n = 6
enter the length of parity matrix = [1 1 0;0 1 1;1 0 1]
p =

   1   1   0
   0   1   1
   1   0   1

G =

   1   0   0   1   1   0
   0   1   0   0   1   1
   0   0   1   1   0   1

enter the message word = [1 1 1]
m =

   1   1   1

c =

   1
   1
   1
   0
   0
   0

h =

   1   0   1   1   0   0
   1   1   0   0   1   0
   0   1   1   0   0   1

enter the received code = [1 1 1 0 0 0]
r =

   1   1   1   0   0   0

s =

   2   2   2

s_b =

   0   0   0

s_d = 0
the received codeword is valid
>>

}%