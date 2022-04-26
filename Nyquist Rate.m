clear all;

f = 100;
T = 1/f;
fs = 10*f; % Nyquist Rate fs = 2*f, Undersampled fs<2*f, Oversampled fs>2*f
ts = 1/fs;
t = 0:(T/50):5*T;
x1 = cos(2*pi*f*t);

% Plot
figure;
subplot(2, 1, 1);
plot(t, x1, 'Linewidth', 2);
title('Original Signal');

% Discretization
n = 0:1:(5*T/ts);
x2 = cos(2*pi*f*n*ts);

% Plot
subplot(2, 1, 2);
stem(n*ts, x2, 'Linewidth', 2);
hold on;
plot(n*ts, x2, 'r', 'Linewidth', 2);
title('Sampling and Reconstruction');
hold on;
legend('Sampled Signal', 'Reconstructed Signal');
