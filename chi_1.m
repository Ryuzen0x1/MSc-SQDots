clear;
close all;
ax = gca;

deltap = -5.0e11:0.01e11:5.0e11; 
deltac=0;
deltab=0;
g21 = 1.0e9;  
g31 = 1.0e9;   
g41 = 4.0e11;
omegap = 11.0e14;
omegac = 1.24e11;
omegab = 1.413e11;
K = 2.0e17;
c = 3e8; % Speed of light

Delta1 = deltap+1i*(g21/2);
Delta2 = deltap +deltac+1i*(g31/2);
Delta3 = deltap +deltab+1i*(g41/2);

Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(omegab)^2;
D = (Delta1+1i*g21/2).*(Delta2+1i*g31/2).*(Delta3+1i*g41/2)-abs(omegac)^2.*(Delta3+1i*g41/2)-abs(omegab)^2.*(Delta1+1i*g21/2);
A=((2.*c.*K)./(omegap));
l=(A^2)*84000;
chi1=((-A.*Dp)./D);

% Plot
red = [0.98 0.52 0];
blue = [0.12 0.61 0.73];

subplot(2,2,1);
plot(deltap ./ 10^11,imag(chi1), 'red', 'LineWidth', 1.5);
hold on;
plot(deltap ./ 10^11,real(chi1), 'blue', 'LineWidth', 1.5);
legend({'Re \chi^{(1)}', 'Img \chi^{(1)}'});
xlabel('\Delta_p', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('\chi^{(1)}', 'FontSize', 12, 'FontWeight', 'bold');
grid on;

omegac = 1.24e11;
omegab = 1.4e11;
Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(omegab)^2;
D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(omegac)^2 .* (Delta3 + 1i*g41/2)- abs(omegab)^2 .* (Delta1 + 1i*g21/2);
chi1=((-A.*Dp)./D);
subplot(2,2,2);
plot(deltap ./ 10^11,imag(chi1), 'red', 'LineWidth', 1.5);
hold on;
plot(deltap ./ 10^11,real(chi1), 'blue', 'LineWidth', 1.5);
xlabel('\Delta_p', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('\chi^{(1)}', 'FontSize', 12, 'FontWeight', 'bold');
grid on;

omegac = 1.24e11;
omegab = 1.4e11;
Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(omegab)^2;
D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(omegac)^2 .* (Delta3 + 1i*g41/2)- abs(omegab)^2 .* (Delta1 + 1i*g21/2);
chi1=((-A.*Dp)./D);
subplot(2,2,3);
plot(deltap ./ 10^11,imag(chi1), 'red', 'LineWidth', 1.5);
hold on;
plot(deltap ./ 10^11,real(chi1), 'blue', 'LineWidth', 1.5);
xlabel('\Delta_p', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('\chi^{(1)}', 'FontSize', 12, 'FontWeight', 'bold');
grid on;

omegac = 1.24e11;
omegab = 1.4e11;
Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(omegab)^2;
D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(omegac)^2 .* (Delta3 + 1i*g41/2)- abs(omegab)^2 .* (Delta1 + 1i*g21/2);
chi1=((-A.*Dp)./D);
subplot(2,2,4);
plot(deltap ./ 10^11,imag(chi1), 'red', 'LineWidth', 1.5);
hold on;
plot(deltap ./ 10^11,real(chi1), 'blue', 'LineWidth', 1.5);
xlabel('\Delta_p', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('\chi^{(1)}', 'FontSize', 12, 'FontWeight', 'bold');
grid on;

ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;
ylim([-3,5]);