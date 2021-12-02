% Part (a)
x1=1:39;
for i = 1:20
    x1(i) = i;
end
for i = 20:39
    x1(i) = 40-i;
end
x2=ones(1,10);
figure;
subplot(4,2,1),stem(x1);
xlabel('n');
ylabel('x1[n]');
title('The first figure of (a)');
subplot(4,2,2),stem(x2);
xlabel('n');
ylabel('x2[n]');
title('The second figure of (a)');

% Part (b)
y1=conv(x1,x2);
subplot(4,2,3),stem(y1);
xlabel('n');
ylabel('y[n]');
title('The figure of (b)');

% Part (c)
M1 = zeros(48,10);
M2 = x2';
for i = 1 : 10
    for j = 1 : 48
        if  (j-i > 0) && (j-i < 39)
            M1(j,i) = x1(j-i + 1);   
        end
    end
end
y2 = M1*M2;
subplot(4,2,4),stem(y2);
xlabel('n');
ylabel('y[n]');
title('The figure of (c)');

% Part (d)

x3=1:5;
for i = 1:5
    x3(i) = 3^i;
end
x4=1:5;
for i = 1:5
    x4(i) = 2^i;
end

subplot(4,2,5),stem(x3);
xlabel('n');
ylabel('x1[n]');
title('The first figure of (d)');
subplot(4,2,6),stem(x4);
xlabel('n');
ylabel('x2[n]');
title('The second figure of (d)');

y3=conv(x3,x4);
subplot(4,2,7),stem(y3);
xlabel('n');
ylabel('y[n]');
title('The third figure of (d)');

M1 = zeros(9,5);
M2 = x4';
for i = 1 : 5
    for j = 1 : 9
        if  (j-i > 0) && (j-i < 5)
            M1(j,i) = x3(j-i + 1);   
        end
    end
end
y4 = M1*M2;
subplot(4,2,8),stem(y4);
xlabel('n');
ylabel('y[n]');
title('The fourth figure of (d)');
