clc;
clear all;
close all;
xn=input('Enter the first sequence x(n)='); 
hn=input('Enter the second sequence h(n)=');
N=max(length(xn), length(hn));
Xk=fft (xn ,N);
Hk=fft (hn,N);
Yk=Xk.*Hk;
yn=ifft (Yk,N);
disp('circular convolution of (n) and h(n) =');
disp(yn)
subplot (2,2,1);
stem(xn)
xlabel('n');
ylabel('x(n)');
title('plot of x(n)');
subplot (2,2,2);
stem(hn)
xlabel('n');
ylabel('h(n)');
title('plot of h(n)=');
subplot (2,2,3); 
stem(yn) 
xlabel('n');
ylabel('y(n)');
title('circular convolution output')