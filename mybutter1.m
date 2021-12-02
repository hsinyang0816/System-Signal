clear;
clc;
% Part (a)
fs = 10;
Ts = 1/fs;
n = 1:100;
x_n = cos(2*pi*(n-1)*Ts);
figure(1);
plot(n,x_n);
xlabel('n');
ylabel('x[n]');
title('The figure of (a)');

% Part (b)
L = 3;
fc = 0.1;
[b1, a1] = butter(L, fc); 
[H1, w1] = freqz(b1,a1,100);
figure(2);
subplot(3,3,1),plot(w1,20*log(abs(H1)));
xlabel('\omega (rad/sec)');
ylabel('Magnitude (dB)');
title('The magnitude response(in dB) vs \omega (rad/sec) of (b)');

subplot(3,3,2),plot(w1,rad2deg(unwrap(atan2(imag(H1),real(H1)))));
xlabel('\omega (rad/sec)');
ylabel('Phase (degree)');
title('The phase response(in degree) vs \omega (rad/sec) of (b)');

y_n = filter(b1,a1,x_n);
subplot(3,3,3),plot(n,y_n);
xlabel('n');
ylabel('y[n]');
title('The output signal y[n] vs n of (b)');

% Part (c)
L = 7;
fc = 0.1;
[b2, a2] = butter(L, fc); 
[H2, w2] = freqz(b2,a2,100);
figure(2);
subplot(3,3,4),plot(w2,20*log(abs(H2)));
xlabel('\omega (rad/sec)');
ylabel('Magnitude (dB)');
title('The magnitude response(in dB) vs \omega (rad/sec) of (c)');

subplot(3,3,5),plot(w2,rad2deg(unwrap(atan2(imag(H2),real(H2)))));
xlabel('\omega (rad/sec)');
ylabel('Phase (degree)');
title('The phase response(in degree) vs \omega (rad/sec) of (c)');

y_n = filter(b2,a2,x_n);
subplot(3,3,6),plot(n,y_n);
xlabel('n');
ylabel('y[n]');
title('The output signal y[n] vs n of (c)');

% Part (d)
L = 3;
fc = 0.5;
[b3, a3] = butter(L, fc); 
[H3, w3] = freqz(b3,a3,100);
figure(2);
subplot(3,3,7),plot(w3,20*log(abs(H3)));
xlabel('\omega (rad/sec)');
ylabel('Magnitude (dB)');
title('The magnitude response(in dB) vs \omega (rad/sec) of (d)');

subplot(3,3,8),plot(w3,rad2deg(unwrap(atan2(imag(H3),real(H3)))));
xlabel('\omega (rad/sec)');
ylabel('Phase (degree)');
title('The phase response(in degree) vs \omega (rad/sec) of (d)');

y_n = filter(b3,a3,x_n);
subplot(3,3,9),plot(n,y_n);
xlabel('n');
ylabel('y[n]');
title('The output signal y[n] vs n of (d)');