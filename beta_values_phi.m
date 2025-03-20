function [Beta20, Beta30, Gamma1]= beta_values_phi(ch,phi)
%clear all;
%phi = 0;
c = 3e8;%m/s
hc = 1.055e-34;%Js
hcc = 6.582e-16;%eVs
e0 = 8.85e-12;%c^2/Nm^2
N = 1e24;%/m^3
mu312 = 1.668e-56;%(Cm)^2
%g21 = 1 meV
g21 = 1.516e12;%/s
%g31= 1 meV
g31 = 1.516e12;%/s
%g41= 1 meV
g41 = 1.516e12;%/s
%g51= 0.1 meV
g51 = 1.516e11;%/s
E31 = 101;%meV
K = 4.55e18;%/s/m
wp = 1.528e14;%/s

switch ch
    case 1
        dp = 3.2e12;
        dc = 0.8e12;
        dd = 2.0e12;
        dk = 3.5e12;
        
    case 2
        dp = 3.2e12;
        dc = 0.9e12;
        dd = 2.0e12;
        dk = 3.5e12;
        
    case 3
        dp = 3.3e12;
        dc = 0.9e12;
        dd = 1.9e12;
        dk = 3.4e12;
        
    case 4
        dp = 3.3e12;
        dc = 1.0e12;
        dd = 1.9e12;
        dk = 3.4e12;
        
    case 5
        dp = 3.4e12;
        dc = 1.0e12;
        dd = 1.8e12;
        dk = 3.3e12;
        
    case 6
        dp = 3.4e12;
        dc = 1.1e12;
        dd = 1.8e12;
        dk = 3.3e12;
        
    case 7
        dp = 3.5e12;
        dc = 1.1e12;
        dd = 1.7e12;
        dk = 3.2e12;
        
    case 8
        dp = 3.5e12;
        dc = 1.2e12;
        dd = 1.7e12;
        dk = 3.2e12;
        
    case 9
        dp = 3.5e12;
        dc = 1.3e12;
        dd = 1.7e12;
        dk = 3.2e12;
        
end

O_c = 7e12;
O_d = 6e12;
O_k = 7e12;
O_m = 6e12;
           
d21 = (dp - dc + (1i*g21/2));
d31 = (dp + (1i*g31/2));
d41 = (dp + dd + (1i*g41/2));
d51 = (dp + dk + (1i*g51/2));

X0 = d21.*((O_m^2)- (d41.*d51));
Y0 = (O_d.*d21.*d51) - (O_m.*O_k.*d21.*(exp(1i*phi)));
Z0 = (O_k.*d21.*d41) - (O_m.*O_d.*d21.*(exp(-1i*phi)));
D0 = (((d21.*d31)-(O_c^2)).*((d41.*d51) - (O_m^2))) - ((O_d^2).*d21.*d51) - ((O_k^2).*d21.*d41) + (O_d.*O_m.*O_k.*d21.*2*cos(phi));%(exp(1i*phi)+exp(-1i*phi)));%2*cos(phi)

x1 = -(2*c*K/wp) .* (X0./D0);
x3 = (2*c*K/wp) .* (mu312/hc.^2) .* (X0./D0) .* (((O_c.^2.*X0.^2./d21.^2) + X0.^2 + Y0.^2 + Z0.^2)./D0.^2);
%x5 = (2*c*K/wp) .* (mu312/hc.^2).^2 .* (X0./D0) .* (((O_c.^2.*X0.^2./d21.^2) + X0.^2 + Y0.^2 + Z0.^2)./D0.^2).^2;
x1r = real(x1);
x3r = real(x3);

Beta20 =(2*K*(dp - dc + (g21*1i)/2))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2)) + (2*K*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2)) + (2*K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (2*K*(dp - dc + (g21*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(dp - dc + (g21*1i)/2)*(2*O_c^2 + 2*O_d^2 + 2*O_k^2 + 2*O_m^2 - 2*(dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - 2*(dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - 2*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (2*K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(dp - dc + (g21*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi))^2)/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^3;
Beta30 =(6*K)/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2)) + (3*K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*O_c^2 + 2*O_d^2 + 2*O_k^2 + 2*O_m^2 - 2*(dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - 2*(dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - 2*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (6*K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi))^2)/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^3 + (6*K*(dp - dc + (g21*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (6*K*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (3*K*(dp - dc + (g21*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)*(2*O_c^2 + 2*O_d^2 + 2*O_k^2 + 2*O_m^2 - 2*(dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - 2*(dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - 2*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (6*K*(dp - dc + (g21*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi))^2)/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^3 - (K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(dp - dc + (g21*1i)/2)*(6*dd - 6*dc + 6*dk + 24*dp + g21*3i + g31*3i + g41*3i + g51*3i))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^2 + (6*K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(dp - dc + (g21*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi))^3)/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^4 + (6*K*(- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(dp - dc + (g21*1i)/2)*(O_d^2*(dp - dc + (g21*1i)/2) + O_k^2*(dp - dc + (g21*1i)/2) - (- O_c^2 + (dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2))*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2) - (- O_m^2 + (dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2))*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2) + O_k^2*(dd + dp + (g41*1i)/2) + O_d^2*(dk + dp + (g51*1i)/2) - 2*O_d*O_k*O_m*cos(phi))*(2*O_c^2 + 2*O_d^2 + 2*O_k^2 + 2*O_m^2 - 2*(dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - 2*(dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - 2*(2*dp - dc + (g21*1i)/2 + (g31*1i)/2)*(dd + dk + 2*dp + (g41*1i)/2 + (g51*1i)/2)))/(- (dp - dc + (g21*1i)/2)*(dk + dp + (g51*1i)/2)*O_d^2 + 2*O_m*cos(phi)*(dp - dc + (g21*1i)/2)*O_d*O_k - (dp - dc + (g21*1i)/2)*(dd + dp + (g41*1i)/2)*O_k^2 + ((dp + (g31*1i)/2)*(dp - dc + (g21*1i)/2) - O_c^2)*((dd + dp + (g41*1i)/2)*(dk + dp + (g51*1i)/2) - O_m^2))^3; 

n0 = 1 + (1/2)*x1r;
r = 3e-6;
S = pi*r^2;
Gamma1 = (wp*x3r)/(n0*c^2*e0*S);
end
