clear;
close all;
ax = gca;

% Parameters
mu41 = 15.68e-29;
hbar = 1.05e-34;
deltap = -5e13:0.001e13:5e13;
deltac = 0;
deltad = 0;
deltab = 0;
phi = 0;
omegac = 1.0e11;
omegap = 2.0e12;
omegad = 0e12;
omegab = 0e12;
g21 = 1.51e11;
g31 = 3.03e12;
g41 = 3.03e12;
k = 1.24e15;
c = 3e8; % Speed of light

% Complex detuning terms
X = (deltap-deltab+(1i/2).*g21);
Y = (deltap-deltad+(1i/2).*g31);
Z = (deltap+(1i/2).*g41);

% Numerator and Denominator terms
Dp = (X.*Z-abs(omegac).^2);
D = (X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
D2 = (Y.*abs(omegab)-abs(omegac*omegad)*exp(1i*phi));
D3 = (X.*abs(omegad)-abs(omegac*omegab)*exp(-1i*phi));
A = ((2.*c.*k)./(omegap));
B = ((abs(Dp).^2+abs(D2).^2+abs(D3).^2)/abs(D).^2);

%chi1=((-A.*Dp)./D);
chi3 = ((A.*Dp)./D)*(abs(mu41).^2/((hbar).^2))*B;

% Plot
red = [0.98 0.52 0];
blue = [0.12 0.61 0.73];
plot(deltap./10.^13,real(chi3), 'blue', 'LineWidth', 1.5);
hold on;
plot(deltap./10.^13,imag(chi3), 'red', 'LineWidth', 1.5);

ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;
%xticks(-500:100:500);
%xticklabels(arrayfun(@(x) sprintf('%d', x/100), -500:100:500, 'UniformOutput', false));
xlabel("Probe freq. (\Delta_p) \times{10^{13}}", 'FontSize', 13, 'FontWeight', 'bold');
ylabel("Third order susceptibility (\chi^{(3)})", 'FontSize', 13, 'FontWeight', 'bold');