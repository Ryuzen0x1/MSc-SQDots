clear; close all;

p = linspace(-400e10, 400e10, 401);

gamma = 2686;
beta2 = 5.799845e-24;
beta3 = 1.212e-36;
beta4 = -2.278e-48;
Q = 2e-11;

power_levels = [2000, 5000, 9000];
power_labels_kq = {'P=1000 mW', 'P=2500 mW', 'P=3500 mW'};
power_labels_k = {'P=800 mW', 'P=1500 mW', 'P=2500 mW'};

colors = [
    0.72, 0.27, 1.0;
    0.9667, 0.5725, 0.3372;
    0.30, 0.75, 0.93;
];

figure('Position', [100, 100, 1000, 400]);

beta_term = beta2.*(p).^2 + beta3.*(p).^3 + beta4.*(p).^4;

subplot(1, 2, 1);
hold on;

for i = 1:length(power_levels)
    r = power_levels(i) * 1e-3;
    
    G_quintic = 2 * sqrt(real(gamma*r*beta_term + 0.25*(beta2.*p.^2).^2 + (r^2)*(p).^2*(Q)^2));
    
    if i == 3
        plot(p, real(G_quintic), 'LineWidth', 1.8, 'Color', colors(i,:));
    elseif i == 2
        plot(p, real(G_quintic), '-.', 'LineWidth', 1.8, 'Color', colors(i,:));
    else
        plot(p, real(G_quintic), '--', 'LineWidth', 1.8, 'Color', colors(i,:));
    end
end

xlabel('Frequency (Hz)');
ylabel('Gain');
title('Kerr-Quintic');
grid on;
legend(power_labels_kq, 'Location', 'best');

subplot(1, 2, 2);
hold on;

for i = 1:length(power_levels)
    r = power_levels(i) * 1e-3;
    
    G_kerr = 2 * sqrt(real(gamma*r*beta_term - 0.25*(beta2*p.^2).^2));
    
    if i == 3
        plot(p, real(G_kerr), 'LineWidth', 1.8, 'Color', colors(i,:));
    elseif i == 2
        plot(p, real(G_kerr), '-.', 'LineWidth', 1.8, 'Color', colors(i,:));
    else
        plot(p, real(G_kerr), '--', 'LineWidth', 1.8, 'Color', colors(i,:));
    end
end

xlabel('Frequency (Hz)');
ylabel('Gain');
title('Kerr');
grid on;
legend(power_labels_k, 'Location', 'best');

sgtitle('Gain Spectrum Analysis with Higher-Order Dispersion Effects');
set(gcf, 'Color', 'white');

param_text = sprintf('\\beta_2 = %.2e, \\beta_3 = %.2e, \\beta_4 = %.2e', beta2, beta3, beta4);
annotation('textbox', [0.02, 0.02, 0.4, 0.05], 'String', param_text, 'EdgeColor', 'none');
