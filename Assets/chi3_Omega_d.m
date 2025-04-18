clear;
close all;

deltap=-2e12:0.001e12:2e12;
deltac=1.0e9;
deltab=2.0e9;
omega_c=5.0e11;
g21=2.0e9;
g31=1.0e9;
g41=4.2e11;
K=1.4e17;
omegap=10.08e14;
omega_d=3e11;
c=3e8;

Delta1 = deltap+1i*(g21/2);
Delta2 = deltap +deltac+1i*(g31/2);
Delta3 = deltap +deltab+1i*(g41/2);

Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ... 
    abs(omega_c)^2.*(Delta3 + 1i*g41/2) - abs(omega_d)^2.*(Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=3.90e12;
chi1=((-A.*Dp)./D);
X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
Y=abs(omega_d)*abs(omega_c);
chi3 =- l*chi1*((abs(Dp).^2 + X+ Y.^2)/ abs(D).^2);
plot(deltap./10.^11, real(chi3),'-.' , LineWidth=2, DisplayName='\Omega_d=2.0'); % Blue
hold on;

omega_c=5.0e11;
omega_d=5e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=3.90e12;
chi1=((-A.*Dp)./D);
X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
Y=abs(omega_d)*abs(omega_c);
chi3 =- l*chi1*((abs(Dp).^2 + X + Y.^2)/ abs(D).^2);
plot(deltap./10.^11, real(chi3), LineWidth=2, DisplayName='\Omega_d=4.0'); % Orange
hold on;


omega_c=5.0e11;
omega_d=7e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=3.90e12;
chi1=((-A.*Dp)./D);
X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
Y=abs(omega_d)*abs(omega_c);
chi3 =- l*chi1*((abs(Dp).^2 + X + Y.^2)/ abs(D).^2);
plot(deltap./10.^11, real(chi3), LineWidth=2, DisplayName='\Omega_d=6.0'); % Yellow
hold on;

omega_c=5.0e11;
omega_d=9e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=3.90e12;
chi1=((-A.*Dp)./D);
X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
Y=abs(omega_d)*abs(omega_c);
chi3 =- l*chi1*((abs(Dp).^2 + X+ Y.^2)/ abs(D).^2);
plot(deltap./10.^11, real(chi3), '--', LineWidth=2.5, DisplayName='\Omega_d=8.0'); % Purple
hold on;

omega_c=5.0e11;
omega_d=11e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2);
A=((2.*c.*K)./(omegap));
l=3.90e12;
chi1=((-A.*Dp)./D);
X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
Y=abs(omega_d)*abs(omega_c);
chi3 =- l*chi1*((abs(Dp).^2 + X + Y.^2)/ abs(D).^2);
plot(deltap./10.^11, real(chi3), LineWidth=2, DisplayName='\Omega_d=10.0'); % Green
hold on;

lgd = legend('show');
set(lgd, 'FontName', 'Garamond', 'FontSize', 16, 'FontWeight', 'bold', 'EdgeColor', 'w', 'NumColumns', 2);
legend boxon;

set(gca, FontName='Garamond', FontSize=18, FontWeight='bold');
xlabel('\Delta_p', FontName='Garamond', FontSize=18, FontWeight='bold');
ylabel('Re \chi^{(3)}', FontName='Garamond', FontSize=18, FontWeight='bold');
title('\Delta_p vs Re\chi^{(3)}', FontName='Garamond', FontSize=17, FontWeight='bold');
grid on;

%folder_path = "C:\Users\Ryuki\Downloads\PLOTS";
%file = fullfile(folder_path, 'chi3_Omega_d.png');
%fig = gcf;
%set(fig, 'Units', 'pixels');
%fig.Position = [100, 100, 1920, 1080];  % [left, bottom, width, height]
%exportgraphics(fig, file, 'Resolution', 600);
