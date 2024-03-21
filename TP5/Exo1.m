clear variables;
close all;

% Simulation de loi normale empirique
a1 = -pi;
b1 = pi;
N = 100000;
u1 = rand(1,N);
u2 = rand(1,N);
X = sqrt(-2*log(u1)).*cos(2*pi*u2);
Y = sqrt(-2*log(u1)).*sin(2*pi*u2);

figure(1); hold on
hX = histogram(X,'FaceColor','magenta','Normalization','pdf');
hX.BinWidth = 0.1;
hY = histogram(Y,'FaceColor','green','Normalization','pdf');
hY.BinWidth = 0.1;
axis([a1 b1 0 1]);
title("Loi Normale");

% Simulation de loi normale theorique
h = 0.01;
x = a1:h:b1;
fx = exp(-(x.^2)/2)*(1/(sqrt(2*pi)));

p = plot(x,fx,'black');
set(p,'LineWidth',1.5);

% Simuler une loi normale quelconque
sigma = 3;
mu = 4;
figure(2); hold on;
Z = X*sigma + mu;
hZ = histogram(Z,'FaceColor','red','Normalization','pdf');
hY.BinWidth = 0.1;

a2 = mu-4*sigma;
b2 = mu+4*sigma;

x = mu-4*sigma:h:mu+4*sigma;
fx = exp(-((x-mu).^2)/(2*sigma^2))*(1/(sigma*sqrt(2*pi)));

p2 = plot(x,fx,'black');
set(p2,'LineWidth',1.5);
title("Loi Normale quelconque");
axis([a2 b2 0 1]);