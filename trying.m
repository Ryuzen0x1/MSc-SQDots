clear;
close all;

% Parameters
deltap = -5e12:0.01e12:5e12;
deltac = 1e12;
deltad = 2.0e12;
% omega = 0;
K = 1.4e17;
omegab = 0.5e12;
omegac = 1e12;
omegap = 10.08e14;
g21 = 2.31e11;                 % (\gamma_{21})
g31 = 2.10e9;                 % (\gamma_{31})
g41 = 2.21e11;                 % (\gamma_{41})
c = 3e8;

% Complex detuning terms
d21 = deltap + 1i * (g21 / 2);
d31 = deltap + deltac + 1i * (g31 / 2);
d41 = deltap + deltad + 1i * (g41 / 2);

% Numerator and denominator terms
Dp = (deltap) .* (deltap + deltad) - abs(omegab)^2;

D = (deltap) .* (deltap + deltad) .* ...
    (deltap + deltac + 1i * g31/2) - ...
    abs(omegab)^2 .* (deltap + deltac + 1i * g31/2) - ...
    abs(omegac)^2 .* (deltap + deltad);

% Third-order susceptibility (\chi_3)
A = (2 .* K .* c) ./ omegap; % Normalization constant
chi1 = ((-A.*Dp) ./ D);
%chi3 = abs(A).^2 .* Dp ./ (D.^2 .* d21);

% Plotting
figure;
plot(deltap ./ 10^12, real(chi1), 'b', 'LineWidth', 1.5); hold on;
plot(deltap ./ 10^12, imag(chi1), 'r', 'LineWidth', 1.5); hold on;
%plot(deltap ./ 10^12, real(chi3), 'b', 'LineWidth', 1.5); hold on; % Real part
%plot(deltap ./ 10^12, imag(chi3), 'r', 'LineWidth', 1.5);          % Imaginary part
xlabel('\Delta_p (THz)');
ylabel('\chi_1');
legend('Re(\chi_1)', 'Im(\chi_1)');
title('First order Susceptibility');
grid on;
