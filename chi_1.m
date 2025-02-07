clear all;
close all;
deltap = -5.0*10^11 : 0.01*10^11 : 5.0*10^11; 
deltac1=1.0*10^9;
deltac2=2.0*10^9;
g21 = 1.0*10^9;  
g31 = 1.0*10^9;   
g41 = 4.2*10^11;  
Omega_c1 = 1.5*10^11; 
Omega_c2 = 1.0*10^11; 
K = 1.4*10^17; 
omegap = 10.08*10^14; 
c = 3*10^8;


Delta1 = deltap+1i*(g21/2); 
Delta2 = deltap +deltac1+1i*(g31/2);
Delta3 = deltap +deltac2+1i*(g41/2); 

Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(Omega_c2)^2;
D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(Omega_c1)^2 .* (Delta3 + 1i*g41/2)- abs(Omega_c2)^2 .* (Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=A*A*84000;

%chi3 = ((2*c*K) / omegap )* ((l*abs(Dp)) ./ abs(D))((abs(Dp).^2 + (abs(Omega_c1)^2) (abs(Delta3 + 1i*g41/2).^2) +( abs(Omega_c2)^2)*(abs(Omega_c1)^2))/ abs(D).^2);

chi1=((-A.*Dp)./D);
%chi1a=imag(chi1);
plot(deltap ./ 10^11,imag(chi1),'b', 'LineWidth', 1.5)
hold on;
%plot(deltap / 10^11, real(chi3), 'o');
%hold on;
%chi1b=real(chi1);
plot(deltap ./ 10^11,real(chi1),'r', 'LineWidth', 1.5)
hold on;
%plot(deltap / 10^11, imag(chi3), '.'); 
%grid on;
ylim([-3,5]);