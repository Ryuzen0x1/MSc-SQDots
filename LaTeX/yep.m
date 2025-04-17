clear all;
close all;
deltap = -5.0*10^12 : 0.01*10^12 : 5.0*10^12; 
deltac1=1.0*10^9;
deltac2=2.0*10^9;
g21 = 2.0*10^9;  
g31 = 1.0*10^9;   
g41 = 4.2*10^11;  
Omega_c1 = 3.0*10^11; 
Omega_c2 = 4.0*10^11; 
K = 1.4*10^17; 
omegap = 10.08*10^14; 
c = 3*10^8;


Delta1 = deltap; 
Delta2 = deltap +deltac1;
Delta3 = deltap +deltac2; 

Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(Omega_c2)^2;
D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(Omega_c1)^2 .* (Delta3 + 1i*g41/2)- abs(Omega_c2)^2 .* (Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
%l=A*A*84000;
l=3.90*10^12;
chi3 = ((2*c*K) / omegap )* ((l*abs(Dp)) ./ abs(D))*((abs(Dp).^2 + (abs(Omega_c1)^2)* (abs(Delta3 + 1i*g41/2).^2) +( abs(Omega_c2)^2)*(abs(Omega_c1)^2))/ abs(D).^2);

chi1=((-A.*Dp)./D);
%chi1a=imag(chi1);
%subplot(2,2,1)
plot(deltap / 10^11,imag(chi1),'b');
hold on;
plot(deltap / 10^11,real(chi1),'r');
grid on;
xlabel('\Delta_p','Fontsize',12,'Fontweight','bold');
ylabel('\chi^{(1)}','Fontsize',12,'Fontweight','bold');
legend('imag \chi^ (1)','real \chi^ (1)')
title('\Delta_p vs \chi^{(1)}');
gtext('\Omega_c_2=4, \Omega_c_1=3','Fontsize',12,'Fontweight','bold','color','blue')
grid on;


// Omega_c1 = 5.0*10^11; 
// Omega_c2 = 6.0*10^11; 
// Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(Omega_c2)^2;
// D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(Omega_c1)^2 .* (Delta3 + 1i*g41/2)- abs(Omega_c2)^2 .* (Delta1 + 1i*g21/2);

// chi3 = ((2*c*K) / omegap )* ((l*abs(Dp)) ./ abs(D))*((abs(Dp).^2 + (abs(Omega_c1)^2)* (abs(Delta3 + 1i*g41/2).^2) +( abs(Omega_c2)^2)*(abs(Omega_c1)^2))/ abs(D).^2);

// chi1=((-A.*Dp)./D);

// %subplot(2,2,2)
// plot(deltap / 10^11,imag(chi1),'b');
// hold on;
// plot(deltap / 10^11,real(chi1),'r');
// grid on;
// xlabel('\Delta_p','Fontsize',12,'Fontweight','bold');
// ylabel('\chi^{(1)}','Fontsize',12,'Fontweight','bold');
// legend('imag \chi^ (1)','real \chi^ (1)')
// title('\Delta_p vs \chi^{(1)}');
// gtext('\Omega_c_2=6 ,\Omega_c_1=5','Fontsize',12,'Fontweight','bold','color','blue')
// grid on;


// Omega_c1 = 7.0*10^11; 
// Omega_c2 = 8.0*10^11; 
// Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(Omega_c2)^2;
// D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(Omega_c1)^2 .* (Delta3 + 1i*g41/2)- abs(Omega_c2)^2 .* (Delta1 + 1i*g21/2);

// chi3 = ((2*c*K) / omegap )* ((l*abs(Dp)) ./ abs(D))*((abs(Dp).^2 + (abs(Omega_c1)^2)* (abs(Delta3 + 1i*g41/2).^2) +( abs(Omega_c2)^2)*(abs(Omega_c1)^2))/ abs(D).^2);

// chi1=((-A.*Dp)./D);
// %subplot(2,2,3)
// plot(deltap / 10^11,imag(chi1),'b');
// hold on;
// plot(deltap / 10^11,real(chi1),'r');
// grid on;
// xlabel('\Delta_p','Fontsize',12,'Fontweight','bold');
// ylabel('\chi^{(1)}','Fontsize',12,'Fontweight','bold');
// legend('imag \chi^ (1)','real \chi^ (1)')
// title('\Delta_p vs \chi^{(1)}');
// gtext('\Omega_c_2=8 , \Omega_c_1=7 ','Fontsize',12,'Fontweight','bold','color','blue')
// grid on;


// Omega_c1 = 9.0*10^11; 
// Omega_c2 = 10.0*10^11; 
// Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(Omega_c2)^2;
// D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(Omega_c1)^2 .* (Delta3 + 1i*g41/2)- abs(Omega_c2)^2 .* (Delta1 + 1i*g21/2);

// chi3 = ((2*c*K) / omegap )* ((l*abs(Dp)) ./ abs(D))*((abs(Dp).^2 + (abs(Omega_c1)^2)* (abs(Delta3 + 1i*g41/2).^2) +( abs(Omega_c2)^2)*(abs(Omega_c1)^2))/ abs(D).^2);

// chi1=((-A.*Dp)./D);
// %subplot(2,2,4)
// plot(deltap / 10^11,imag(chi1),'b');
// hold on;
// plot(deltap / 10^11,real(chi1),'r');
// grid on;
// xlabel('\Delta_p','Fontsize',12,'Fontweight','bold');
// ylabel('\chi^{(1)}','Fontsize',12,'Fontweight','bold');
// legend('imag \chi^ (1)','real \chi^ (1)')
// title('\Delta_p vs \chi^{(1)}');
// gtext('\Omega_c_2=10 , \Omega_c_1=9' ,'Fontsize',12,'Fontweight','bold','color','blue');
// grid on;