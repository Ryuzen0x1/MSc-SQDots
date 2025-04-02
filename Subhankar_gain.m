clear;
close all;

% Parameter space
om = linspace(90*10^10, -90*10^10, 200);     % Frequency range
pw = linspace(0.0001*10^(-3), 50000*10^(-3), 50);  % Power range
[omega, p0] = meshgrid(om, pw);

% Physical parameters
gamma = 5.706*10^7;    % Nonlinearity coefficient
delta = 5.7140*10^5;   % Two-photon absorption coefficient
beta2 = 4.0282*10^(-14);  % Second-order dispersion

% Adding third and fourth-order dispersion (typical quantum dot values)
beta3 = 1.2*10^(-28);  % Third-order dispersion coefficient
beta4 = 5.5*10^(-42);  % Fourth-order dispersion coefficient

% Modified gain formula including beta3 and beta4 terms
g = (2.*sqrt((beta2.*((omega).^2).*gamma.*p0 - beta2.*(omega.^2).*2.*delta.*p0.^2) - ...
    ((beta2.*0.5.*((omega).^2)).^2) + ...
    (beta3.*((omega).^3).*gamma.*p0 - beta3.*(omega.^3).*2.*delta.*p0.^2) - ...
    ((beta3.*0.5.*((omega).^3)).^2) + ...
    (beta4.*((omega).^4).*gamma.*p0 - beta4.*(omega.^4).*2.*delta.*p0.^2) - ...
    ((beta4.*0.5.*((omega).^4)).^2)));

G = real(g);  % Extract real part of gain

% Create waterfall plot
h = waterfall(p0, omega, G);
xlabel('Power (W)');
ylabel('Frequency (rad/s)');
zlabel('Gain');
title('Gain with 2nd, 3rd, and 4th Order Dispersion');