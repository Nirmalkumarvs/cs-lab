clear all; 
close all; 
clc;  

k  =input('Enter the length of message word : '); 
n = input('Enter the length of code word : '); 
m = input('Enter the message word : '); 
G = cyclpoly(n,k,'max');
gx = poly2sym(G);
c = encode(m,n,k,'cyclic',G) 
d = decode(c,n,k,'cyclic',G)