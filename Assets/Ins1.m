clear;
close all;
om=linspace(25*10^10,-25*10^10,1500);
pw=linspace( 0.0001*10^(-3), 35000*10^(-3),38);
[omega,p0]=meshgrid(om,pw);
gamma=1.706*10^6;
delta=6.7140*10^5;
beta2=4.0282*10^(-14);
g=(2.*sqrt((beta2.*((omega).^2).*(gamma+(2*delta*p0)).*p0)-(p0.*(beta2.*0.5.*((omega).^2)).^2)));
G=real(g);
h=waterfall(p0, omega, G);

h.LineWidth = 1.75;
set(gca, 'FontName', 'Garamond', 'FontSize', 24, 'FontWeight', 'bold', XColor=[0 0 0], YColor=[0 0 0]);
xlabel('P_0 (mW)', 'FontName', 'Garamond', 'FontSize', 24, Color=[0 0 0]);
ylabel('\Omega (GHz)', 'FontName', 'Garamond', 'FontSize', 24, Color=[0 0 0]);
zlabel('G (mm^{-1})', 'FontName', 'Garamond', 'FontSize', 24, Color=[0 0 0]);
%title('Waterfall Plot', 'FontName', 'Garamond', 'FontSize', 18);

folder_path = "C:\Users\Ryuki\Downloads\PLOTS";
file = fullfile(folder_path, 'Beta2_Kerr.jpeg');
fig = gcf;
set(fig, 'Units', 'pixels');
fig.Position = [100, 100, 1280, 720];  % [left, bottom, width, height]
exportgraphics(fig, file, 'Resolution', 300);