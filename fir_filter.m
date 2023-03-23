clc;
clear all;
close all;
f=input('enter the frequency :');
fs=input('enter the sampling frequency :');
N=input('order of the filter =');
wc=2*pi*f/fs;
h=fir1(N-1,wc/pi,hamming(N));
disp('hamming window coefficients :');
disp(hamming(N));
disp('Impulse respone of FIR filter :');
disp(h);
figure(1);
freqz(h);
figure(2);
n=0:1:N-1;
stem(n,h);
xlabel('n');
ylabel('h(n)');
title('Impulse Response of FIR filter');