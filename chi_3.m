clear;
close all;
ax = gca;

% Parameters
mu41 = 15.68e-29;
hbar = 1.054e-34;
deltap = -5e13:0.001e13:5e13;
deltac = 0;
deltad = 0;
deltab = 0;
phi = 0;
omegac = 0e11;
omegap = 2.0e12;
omegad = 1.0e12;
omegab = 1.0e12;
g21 = 1.51e11;
g31 = 3.03e12;
g41 = 3.03e12;
k = 1.24e15;
c = 3e8; % Speed of light

% Complex detuning terms
X = (deltap - deltab + (1i/2) .* g21);
Y = (deltap - deltad + (1i/2) .* g31);
Z = (deltap + (1i/2) .* g41);

% Numerator and Denominator terms
Dp = (X.*Z-abs(omegac).^2);
D = (X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
D2 = (Y.*abs(omegab)-abs(omegac*omegad)*exp(1i*phi));
D3 = (X.*abs(omegad)-abs(omegac*omegab)*exp(-1i*phi));
A = ((2.*c.*k)./(omegap));
B = ((abs(Dp).^2+abs(D2).^2+abs(D3).^2)/abs(D).^2);
chi3 = ((A.*Dp)./D)*(abs(mu41).^2/((hbar).^2))*B;

% Plot
red = [0.98 0.52 0];
blue = [0.12 0.61 0.73];
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

subplot(2,2,1);
plot(deltap./10.^12,real(chi3), 'blue', 'LineWidth', 1.5);
xlabel("\Delta_p", 'FontSize', 13, 'FontWeight', 'bold');
ylabel("\chi^{(3)}", 'FontSize', 13, 'FontWeight', 'bold');
legend('Re \chi^{(3)}');
%gtext('\Omega_c=0, \Omega_b=1, \Omega_d=0', 'FontSize', 12, 'Color', 'blue');
grid on;

omegac = 0e11;
omegad = 2.0e12;
omegab = 2.0e12;
Dp = (X.*Z-abs(omegac).^2);
D = (X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
D2 = (Y.*abs(omegab)+abs(omegac*omegad)*exp(1i*phi));
D3 = (X.*abs(omegad)+abs(omegac*omegab)*exp(-1i*phi));
A = ((2.*c.*k)./(omegap));
B = ((abs(Dp).^2+abs(D2).^2+abs(D3).^2)/abs(D).^2);
chi3 = ((A.*Dp)./D)*(abs(mu41).^2/((hbar).^2))*B;
subplot(2,2,2);
plot(deltap./10.^12,real(chi3), 'blue', 'LineWidth', 1.5);
xlabel("\Delta_p", 'FontSize', 13, 'FontWeight', 'bold');
ylabel("\chi^{(3)}", 'FontSize', 13, 'FontWeight', 'bold');
legend('Re \chi^{(3)}');
%gtext('\Omega_c=0, \Omega_b=2, \Omega_d=0', 'FontSize', 12, 'Color', 'blue');
grid on;

omegac = 0e11;
omegad = 3.0e12;
omegab = 3.0e12;
Dp = (X.*Z-abs(omegac).^2);
D = (X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
D2 = (Y.*abs(omegab)-abs(omegac*omegad)*exp(1i*phi));
D3 = (X.*abs(omegad)-abs(omegac*omegab)*exp(-1i*phi));
A = ((2.*c.*k)./(omegap));
B = ((abs(Dp).^2+abs(D2).^2+abs(D3).^2)/abs(D).^2);
chi3 = ((A.*Dp)./D)*(abs(mu41).^2/((hbar).^2))*B;
subplot(2,2,3);
plot(deltap./10.^12,real(chi3), 'blue', 'LineWidth', 1.5);
xlabel("\Delta_p", 'FontSize', 13, 'FontWeight', 'bold');
ylabel("\chi^{(3)}", 'FontSize', 13, 'FontWeight', 'bold');
legend('Re \chi^{(3)}');
%gtext('\Omega_c=0, \Omega_b=3, \Omega_d=0', 'FontSize', 12, 'Color', 'blue');
grid on;

omegac = 0e11;
omegad = 4.0e12;
omegab = 4.0e12;
Dp = (X.*Z-abs(omegac).^2);
D = (X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2+Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
D2 = (Y.*abs(omegab)-abs(omegac*omegad)*exp(1i*phi));
D3 = (X.*abs(omegad)-abs(omegac*omegab)*exp(-1i*phi));
A = ((2.*c.*k)./(omegap));
B = ((abs(Dp).^2+abs(D2).^2+abs(D3).^2)/abs(D).^2);
chi3 = ((A.*Dp)./D)*(abs(mu41).^2/((hbar).^2))*B;
subplot(2,2,4);
plot(deltap./10.^12,real(chi3), 'blue', 'LineWidth', 1.5);
xlabel("\Delta_p", 'FontSize', 13, 'FontWeight', 'bold');
ylabel("\chi^{(3)}", 'FontSize', 13, 'FontWeight', 'bold');
legend('Re \chi^{(3)}');
%gtext('\Omega_c=0, \Omega_b=4, \Omega_d=0', 'FontSize', 12, 'Color', 'blue');
grid on;