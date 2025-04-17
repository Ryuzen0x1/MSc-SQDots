clear;
close all;

deltap=-2e12:0.001e12:2e12;
deltac=1.0e9;
deltab=2.0e9;
g21=2.0e9;
g31=1.0e9;
g41=4.2e11;
K=1.4e17;
omegap=10.08e14;
omega_c=3e11;
omega_d=6.455e11;
omega_b=0e11;
c=3e8;

Delta1 = deltap+1i*(g21/2);
Delta2 = deltap+deltac+1i*(g31/2);
Delta3 = deltap+deltab+1i*(g41/2);

Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ... 
    abs(omega_c)^2.*(Delta3 + 1i*g41/2) + abs(omega_d)^2.*(Delta1 + 1i*g21/2) + 2.*(omega_c).*(omega_d);
A=((2.*c.*K)./(omegap));
%l=3.90e12;
chi1=((-A.*Dp)./D);
%X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
%Y=abs(omega_d)*abs(omega_c);
%chi3 =- l*chi1*((abs(Dp).^2 + X+ Y.^2)/ abs(D).^2);
plot(deltap./10.^11, imag(chi1),'-.' , LineWidth=2, DisplayName='\Omega_c=0.0', Color=[0 0 1]); % Blue
hold on;

omega_c=5e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2) + 2.*(omega_c).*(omega_d);
A=((2.*c.*K)./(omegap));
%l=3.90e12;
chi1=((-A.*Dp)./D);
%X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
%Y=abs(omega_d)*abs(omega_c);
%chi3 =- l*chi1*((abs(Dp).^2 + X + Y.^2)/ abs(D).^2);
plot(deltap./10.^11, imag(chi1), LineWidth=2, DisplayName='\Omega_c=2.0', Color=[1 0 0]); % Red
hold on;


omega_c=7e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2) + 2.*(omega_c).*(omega_d);
A=((2.*c.*K)./(omegap));
%l=3.90e12;
chi1=((-A.*Dp)./D);
%X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
%Y=abs(omega_d)*abs(omega_c);
%chi3 =- l*chi1*((abs(Dp).^2 + X + Y.^2)/ abs(D).^2);
plot(deltap./10.^11, imag(chi1), LineWidth=2, DisplayName='\Omega_c=4.0'); % Yellow
hold on;

omega_c=9e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2) + 2.*(omega_c).*(omega_d);
A=((2.*c.*K)./(omegap));
%l=3.90e12;
chi1=((-A.*Dp)./D);
%X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
%Y=abs(omega_d)*abs(omega_c);
%chi3 =- l*chi1*((abs(Dp).^2 + X+ Y.^2)/ abs(D).^2);
plot(deltap./10.^11, imag(chi1), '--', LineWidth=2.5, DisplayName='\Omega_c=6.0'); % Purple
hold on;

omega_c=11e11;
Dp = (Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - abs(omega_d)^2;
D = (Delta1 + 1i*g21/2).*(Delta2 + 1i*g31/2).*(Delta3 + 1i*g41/2) - ...
    abs(omega_c)^2.*(Delta3 + 1i*g41/2)- abs(omega_d)^2.*(Delta1 + 1i*g21/2) + 2.*(omega_c).*(omega_d);
A=((2.*c.*K)./(omegap));
l=3.90e12;
chi1=((-A.*Dp)./D);
X=(abs(omega_c).^2)*(abs(Delta3 + 1i*g41/2).^2);
Y=abs(omega_d)*abs(omega_c);
chi3 =- l*chi1*((abs(Dp).^2 + X + Y.^2)/ abs(D).^2);
plot(deltap./10.^11, imag(chi1), LineWidth=2, DisplayName='\Omega_c=8.0', Color=[0 0.5 0]); % Green
hold on;

lgd = legend('show');
set(lgd, 'FontName', 'Garamond', 'FontSize', 24, 'FontWeight', 'bold', 'EdgeColor', ...
    'w', 'NumColumns', 3, TextColor=[0 0 0]);
legend boxon;
yticks([0, 0.25, 0.5, 0.75, 1]);
set(gca, FontName='Garamond', FontSize=42, FontWeight='bold', XColor=[0 0 0], YColor=[0 0 0]);
xlabel('\Delta_p/\gamma^{\prime}_{31}', FontName='Garamond', FontSize=42, FontWeight='bold', Color=[0 0 0]);
ylabel('Im\chi^{(1)}', FontName='Garamond', FontSize=42, FontWeight='bold', Color=[0 0 0]);
%title('\Delta_p vs Re\chi^{(1)}', FontName='Garamond', FontSize=17, FontWeight='bold');
grid on;

folder_path = "C:\Users\Ryuki\Downloads\PLOTS";
file = fullfile(folder_path, 'Img_chi1_Omega_c.jpeg');
fig = gcf;
set(fig, 'Units', 'pixels');
fig.Position = [100, 100, 1280, 720];  % [left, bottom, width, height]
exportgraphics(fig, file, 'Resolution', 300);