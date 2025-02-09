clear;
close all;
ax = gca;

deltap=-5.0e12:0.001e12:5.0e12;
deltac=1;
deltad=0;
deltab=0;
phi=0;
omegac=2.0e12;
omegap=2.0e12;
omegad=0e12;
omegab=1.0e12;
g21=1.51e11;
g31=3.03e12;
g41=3.03e12;
K=1.24e15;
c=3e8;
l=6.49e12;
X = (deltap-deltab+(1i/2).*g21);
Y = (deltap-deltac+(1i/2).*g31);
Z = (deltap+deltad+(1i/2).*g41);

Dp=(X.*Z-abs(omegac).^2);
D = (deltap).*(deltap+deltad).*(deltap+deltac+1i*g31/2)-abs(omegab)^2.*(deltap+deltac+1i*g31/2)-abs(omegac)^2.*(deltap+deltad);
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);

re = [0.98 0.52 0];
bl = [0.12 0.61 0.73];

%subplot(2,2,1);
plot(deltap./10.^11,imag(chi1),'--', 'Color', [0.98 0.52 0],'LineWidth',1.5);
hold on;
plot(deltap./10.^11,real(chi1),  'bl', 'LineWidth',1.5);
legend({'Img \chi^{(1)}', 'Re \chi^{(1)}'});
xlabel('\Delta_p', 'Fontsize', 12, 'Fontweight', 'bold');
ylabel('\chi^{(1)}', 'Fontsize', 12, 'Fontweight', 'bold');
%gtext('\Omega_b=2, \Omega_c=3, \Omega_d=0', 'Fontsize', 12, 'color', 'blue');
grid on;