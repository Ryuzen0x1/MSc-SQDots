clear all;
close all;
deltap=-5*10^12:0.001*10^11:5*10^12;
deltac1=1.0*10^9;
deltac2=2.0*10^9;
Omega_c1=3.0*10^11;
g2=2.0*10^9;
g3=1.0*10^9;
g4=4.2*10^11;
k=1.4*10^17;
omegap=10.08*10^14;
Omega_c2=4.0*10^11;
c=3*10^8;
d1 = deltap;
d2 = d1 +deltac1;
d3 = d2 +deltac2; 
Dp = (d2 + 1i*g3/2) .* (d3 + 1i*g4/2) - abs(Omega_c2)^2;

D = (d1 + 1i*g2/2) .* (d2 + 1i*g3/2) .* (d3 + 1i*g4/2)- abs(Omega_c1)^2 .* (d3 + 1i*g4/2)- abs(Omega_c2)^2 .* (d1 + 1i*g2/2);

p=10^9;

r=500*10^-3;

beta=-(2*k/D)+(2*k*(d2+d3+1i*g3+1i*g4)*{Dp+(d1+1i*g2)*(d3+1i*g4)+(d1+1i*g2)*(d2+1i*g3)-(abs(Omega_c1))^2}./D^2)-((2*k*Dp*{Dp+(d1+1i*g2)*(d3+1i*g4)+(d1+1i*g2)*(d2+1i*g3)-(abs(Omega_c1))^2}^2)./D^3)+2*k*Dp*{d1+d2+d3+1i*g2+1i*g3+1i*g4}./D^2;

W=k*(Dp/D)*{abs(Dp).^2+abs(d3+1i*g4).^2+(abs(Omega_c2).^2)*(abs(Omega_c1).^2)}/abs(D).^2;

M=k*(Dp/D)*{abs(Dp).^2+abs(d3+1i*g4).^2+(abs(Omega_c2).^2)*(abs(Omega_c1).^2)}^2/abs(D).^2;

beta1=real(beta);

W1=real(W);

M1=real(M);

G=2*(beta1*p^2*(abs(W1)*r-2*abs(M1)*r^2)-0.25*(beta1*p^2)^2)^(0.5);
plot(p,G);