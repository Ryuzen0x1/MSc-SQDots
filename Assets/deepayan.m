clear;
close all;
deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=0;
deltad=0;
deltab=0;
phi=0;
omegac=2.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,1)
plot(deltap./10.^11,real(chi1),'LineWidth',1.2)
hold on;
deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=0;
deltad=0;
deltab=0;
phi=0;
omegac=2.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,1)
plot(deltap./10.^11,imag(chi1),'--','LineWidth',1.3)
xlabel('\Delta_p','Fontsize',12,'Fontweight','bold');
ylabel('\chi^{(1)}','Fontsize',12,'Fontweight','bold');
legend('real \chi^ (1)','imag \chi^ (1)')
title('\Delta_p vs \chi^{(1)}');
gtext('\Omega_b=0 , \Omega_c=2  ,\Omega_d=0','Fontsize',12,'Fontweight','bold','color','blue')
grid on


%plot 2


deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=1;
deltad=0;
deltab=0;
phi=0;
omegac=3.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,2)
plot(deltap./10.^11,real(chi1),'LineWidth',1.2)
hold on;
deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=1;
deltad=0;
deltab=0;
phi=0;
omegac=3.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,2)
plot(deltap./10.^11,imag(chi1),'--','LineWidth',1.3)
xlabel('\Delta_p','Fontsize',12,'Fontweight','bold');
ylabel('\chi^{(1)}','Fontsize',12,'Fontweight','bold');
legend('real \chi^ (1)','imag \chi^ (1)')
title('\Delta_p vs \chi^{(1)}');
gtext('\Omega_b=0 , \Omega_c=3  ,\Omega_d=0','Fontsize',12,'Fontweight','bold','color','blue')
grid on


%plot 3
deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=0;
deltad=0;
deltab=0;
phi=0;
omegac=4.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,3)
plot(deltap./10.^11,real(chi1),'LineWidth',1.2)
hold on;
deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=0;
deltad=0;
deltab=0;
phi=0;
omegac=2.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,3)
plot(deltap./10.^11,imag(chi1),'--','LineWidth',1.3)
xlabel('\Delta_p','Fontsize',13,'Fontweight','bold');
ylabel('\chi^{(1)}','Fontsize',13,'Fontweight','bold');
legend('real \chi^ (1)','imag \chi^ (1)')
title('\Delta_p vs \chi^{(1)}');
gtext('\Omega_b=0 , \Omega_c=4  ,\Omega_d=0','Fontsize',12,'Fontweight','bold','color','blue')
grid on

%plot 4

deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=2;
deltad=0;
deltab=0;
phi=0;
omegac=1.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,4)
plot(deltap./10.^11,real(chi1),'LineWidth',1.2)
hold on;
deltap=-5.0*10^13:0.001*10^13:5.0*10^13;
deltac=2;
deltad=0;
deltab=0;
phi=0;
omegac=2.0*10^12;
omegap=2.84*10^12;
omegad=0*10^12;
omegab=0*10^12;
g21=1.51*10^11;
g31=3.03*10^12;
g41=3.03*10^12;
K=1.24*10^15;
c=3*10^8;
l=6.49*10^12;
X=(deltap-deltab+i*0.5.*g21);
Y=(deltap-deltad+i*0.5.*g31);
Z=(deltap+i*0.5.*g41);
Dp=(X.*Z-abs(omegac).^2);
D=(X.*Y.*Z-Z.*abs(omegac).^2-X.*abs(omegad).^2-Y.*abs(omegab).^2+2*(omegac)*(omegad)*(omegab)*cos(phi));
A=((2.*c.*K)./(omegap));
chi1=((-A.*Dp)./D);
subplot(2,2,4)
plot(deltap./10.^11,imag(chi1),'--','LineWidth',1.3)
xlabel('\Delta_p','Fontsize',13,'Fontweight','bold');
ylabel('\chi^{(1)}','Fontsize',13,'Fontweight','bold');
legend('real \chi^ (1)','imag \chi^ (1)')
title('\Delta_p vs \chi^{(1)}');
gtext('\Omega_b=0 , \Omega_c=1  ,\Omega_d=0','Fontsize',12,'Fontweight','bold','color','blue')
grid on
