close all;
clear all;
clc;
k=input('enter the length of message word = ')
n=input('enter the length of codeword = ')
p=input('enter the parity matrix : ')
G=[eye(k) p]
m=input('enter the msg word : ')
c=encode(m,n,k,'linear',G)
d=decode(c,n,k,'linear',G)
%{ 
enter the length of message word3
k = 3
enter the length of codeword6
n = 6
enter the parity matrix[1 1 0;0 1 1;1 0 1]
p =

   1   1   0
   0   1   1
   1   0   1

G =

   1   0   0   1   1   0
   0   1   0   0   1   1
   0   0   1   1   0   1

enter the msg word[1 1 0]
m =

   1   1   0

c =

   1
   1
   0
   1
   0
   1

d =

   1
   1
   0

>>




}%