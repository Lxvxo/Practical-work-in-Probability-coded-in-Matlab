clear variables;
close all;

lambda_x = 1;
lambda_y = 2;

n=100000;
Z1=rand(n,1); % VA uniforme sur [0,1]
Z2=rand(n,1); % VA uniforme sur [0,1]

X=-log(1-Z1)/lambda_x ; % simulation de la VA X
Y= -log(1-Z2)/lambda_y; % simulation de la VA Y

% Variable U empirique
U= X + 2*Y;

[h,uout]=hist(U,50); % calcul de l’histogramme de U

mu_emp=mean(U); % moyenne empirique
sigma_emp=std(U); % écart type empirique


mu_the=1/lambda_x + 2*(1/lambda_y); % moyenne theorique
sigma_the=sqrt(1/(lambda_x^2) + 2*(1/(lambda_y^2))); % écart type theorique

% Variable U théorique
u = 0:0.1:(mu_the + 4*sigma_the);
fu = u .*exp(-u);

% Affichage
figure(1); hold on;
bar(uout,h/trapz(uout,h)); % affichage de l’histogramme de U


p = plot(u,fu,'black');
set(p,'LineWidth',1.5);
title('U = X + 2 x Y');
fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp,mu_the);
fprintf('Ecart type empirique : %f,\t Ecart type théorique : %f\n',sigma_emp, sigma_the);