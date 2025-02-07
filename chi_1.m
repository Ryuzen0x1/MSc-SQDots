clear;
close all;
deltap = -5.0e11 : 0.01e11 : 5.0e11; 
deltac1=1.0e9;
deltac2=2.0e9;
g21 = 1.0e9;  
g31 = 1.0e9;   
g41 = 4.2e11;
Omega_c1 = 1.5e11;
Omega_c2 = 1.0e11;
K = 1.4e17;
omegap = 10.08e14;
c = 3e8;

Delta1 = deltap+1i*(g21/2);
Delta2 = deltap +deltac1+1i*(g31/2);
Delta3 = deltap +deltac2+1i*(g41/2);

Dp = (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2) - abs(Omega_c2)^2;
D = (Delta1 + 1i*g21/2) .* (Delta2 + 1i*g31/2) .* (Delta3 + 1i*g41/2)- abs(Omega_c1)^2 .* (Delta3 + 1i*g41/2)- abs(Omega_c2)^2 .* (Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=(A^2)*84000;

chi1=((-A.*Dp)./D);

plot(deltap ./ 10^11,imag(chi1),'b', 'LineWidth', 1.5);
hold on;
plot(deltap ./ 10^11,real(chi1),'r', 'LineWidth', 1.5);
ylim([-3,5]);