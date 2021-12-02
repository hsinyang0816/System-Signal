% Part (a)
sym('n');
N1 = 250;
N = 2*N1 + 1;
T = 50;
Ts = T/N1;
n = (-N1):N1;
x_n = sinc(n*Ts);
figure;
subplot(3,2,1),plot(n,x_n);
xlabel('n');
ylabel('x[n]');
title('The figure of (a)');

% Part (b)
k = -N1 : N1;
w = 2*pi*(k-1)/N;
Xf = fft(x_n);
Xf = fftshift(Xf);
Xf_M = abs(Xf);
subplot(3,2,2),plot(w,Xf_M);
xlabel('angular frequency');
ylabel('Amplitude');
title('The figure of (b)');

% Part (c)
syms L;
X_k = 0;
for L = -N1 : N1
    X_k = X_k + sinc(L*Ts)*exp(-1i*2*pi*(L-1)*(k-1)/N);
end
X_k_M = abs(X_k);
subplot(3,2,3),plot(w,X_k_M);
xlabel('angular frequency');
ylabel('Amplitude');
title('The figure of (c)');

% Part (d)
Tw = T/2;
w_n = zeros(1,N);
for i = 1:N
    if abs(n(i)*Ts) <= Tw/2
        w_n(i) = (1+cos(2*pi*abs(n(i)*Ts)/Tw))/2;
    end
end
subplot(3,2,4),plot(n,w_n);
xlabel('n');
ylabel('w[n]');
title('The figure of (d)');

% Part (e)
y_n = x_n .* w_n;
subplot(3,2,5),plot(n,y_n);
xlabel('n');
ylabel('y[n]');
title('The figure of (e)');

% Part (f)
Yf = fft(y_n);
Yf = fftshift(Yf);
Yf_M = abs(Yf);
subplot(3,2,6),plot(w,Yf_M);
xlabel('angular frequency');
ylabel('Amplitude');
title('The figure of (f)');
