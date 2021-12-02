clear;
clc;
% Part (a)
z=[1; 1; -1; -1];
p=[0.3 + 0.4j, 0.3-0.4j, 0.1+0.1j, 0.1-0.1j];
k=0.09;
[b,a] = zp2tf(z,p,k);
[r, P, K] = residuez(b,a);
n= 0:49;
delta= zeros(1,50);
delta(1,1)= K;
hn= real(r(1)*p(1).^n + r(2)*p(2).^n + r(3)*p(3).^n + r(4)*p(4).^n + delta) ;
figure(1);
stem(n, hn,'filled');
xlabel('n');
ylabel('h[n]');
title('The figure of (a)');

figure(1);

sos=zp2sos(z,p,k);

% Part (b)
figure(2);
zplane(b,a);
xlabel('Real part');
ylabel('Imaginary part');
title('The figure of (b)');

%part (c)
figure(3);
[H, w] = freqz(b,a);
subplot(2,1,1),plot(w,abs(H));
xlabel('\omega (rad/sec)');
ylabel('Magnitude ');
title('The magnitude response vs \omega (rad/sec) of (c)');

subplot(2,1,2),plot(w,rad2deg(unwrap(atan2(imag(H),real(H)))));
xlabel('\omega (rad/sec)');
ylabel('Phase (degree)');
title('The phase response(in degree) vs \omega (rad/sec) of (c)');

%part (e)
b1 = sos(1,1:3);
a1 = sos(1,4:6);
b2 = sos(2,1:3);
a2 = sos(2,4:6);
figure(4);
[H1, w1] = freqz(b1,a1);
[H2, w2] = freqz(b2,a2);
subplot(3,1,1),plot(w1,abs(H1));
xlabel('\omega (rad/sec)');
ylabel('Magnitude ');
title('The magnitude response vs \omega (rad/sec) of H1(z)');
subplot(3,1,2),plot(w2,abs(H2));
xlabel('\omega (rad/sec)');
ylabel('Magnitude ');
title('The magnitude response vs \omega (rad/sec) of H2(z)');
subplot(3,1,3),plot(w,abs(H1).*abs(H2));
xlabel('\omega (rad/sec)');
ylabel('Magnitude ');
title('The magnitude response vs \omega (rad/sec) of multiplication of H1(z) and H2(z)');

%part (f)
X=1;
[b,a] = zp2tf(z,p,X*k);
[y,n] = impz(b,a,50);
figure(5);
stem(n,y,'fill');
xlabel('n');
ylabel('y[n]');
title('The figure of (f)');


