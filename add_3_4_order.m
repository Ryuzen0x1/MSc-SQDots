clear;
close all;

om = linspace(6e12, -6e12, 300);
pw = linspace(0.0001e-3, 39000e-3, 50);
[omega, p0] = meshgrid(om, pw);
Q = 2e-11;
gamma = 2686;
beta2 = 5.799845e-24;
beta3 = 1.2e-36;
beta4 = -2.3e-48;

beta_term = beta2.*(omega).^2 + beta3.*(omega).^3 + beta4.*(omega).^4;

g_kerr = 2.*sqrt(gamma.*p0.*beta_term - (p0.*0.25.*(beta2).^2).*(omega).^3);
g_quintic = 2.*(sqrt(gamma.*p0.*beta_term - (p0.*0.25.*(beta2).^2).* ...
            (omega).^4 - (p0.^2).*(omega).^2.*(Q).^2));

G_kerr = real(g_kerr);
G_quintic = real(g_quintic);

figure(1);
h_kerr = waterfall(p0, omega, G_kerr);
colormap("jet");
title('Kerr');

figure(2);
h_quintic = waterfall(p0, omega, G_quintic);
colormap("jet");
view(120, 40);
title('Kerr-Quintic');
