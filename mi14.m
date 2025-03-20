clear;
close all;
% Kerr & self-steepning
om=linspace(30*10^12,-30*10^12,150);
pw=linspace( 0.0001*10^(-3), 35000*10^(-3),30);
[omega,p0]=meshgrid(om,pw);
gamma=212.27;
beta2=4.84*10^(-23);
s=1.72*10^(-11);
tr=0;
g=(2.*sqrt(gamma.*p0.*beta2.*((omega).^2)-(0.25.*((beta2).^2).*((omega).^4))-p0.^2.*((omega).^2).*((s-tr).^2)));
%g=(2.*sqrt((beta2.*((omega).^2).*gamma.*p0)-((beta2.*0.5.*((omega).^2)).^2)));
gai=3.5.*real(g);
h=waterfall(p0, omega*10^(-12), gai./10.^3);
ylim([-30 30]);
xlim([0 35]);
zlim([0 16]);