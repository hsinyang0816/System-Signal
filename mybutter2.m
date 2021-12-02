clear;
clc;
% Part (a)
f1 = 100;
Ts = 0.002;
n = 1:1000;
x_n = cos(2*pi*(n-1)*Ts) + 2*cos(2*pi*f1*(n-1)*Ts);
figure(1);
subplot(3,1,1),plot(n,x_n);
xlabel('n');
ylabel('x[n]');
title('The figure of (a)');

% Part (b)
L = 16;
fc = 0.1;
[b1, a1] = butter(L, fc); 
[H1, w1] = freqz(b1,a1,1000);
y_n = filter(b1,a1,x_n);
subplot(3,1,2),plot(n,y_n);
xlabel('n');
ylabel('y[n]');
title('The output signal y[n] vs n of (b)');

% Part (c)
L = 16;
fc = [0.2 0.6];
[b2, a2] = butter(L, fc); 
[H2, w2] = freqz(b2,a2,1000);
y_n = filter(b2,a2,x_n);
subplot(3,1,3),plot(n,y_n);
xlabel('n');
ylabel('y[n]');
title('The output signal y[n] vs n of (c)');