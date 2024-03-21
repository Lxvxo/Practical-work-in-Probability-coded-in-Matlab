N = 10000;



% loi uniforme
X1 = rand(1,N);
Y1 = rand(1,N);

Z1 = min(X1,Y1);


figure(1); hold on;
hZ1 = histogram(Z1,'FaceColor','magenta','Normalization','pdf');
hZ1.BinWidth = 0.01;

title("Pour les lois uniformes");

% Simulation  theorique

z1 = 0:0.1:1;
fz1 = 2.*(1-z1);


pz1 = plot(z1,fz1,'black');
set(pz1,'LineWidth',1.5);

% Loi de possion

Z1=rand(N,1); % VA uniforme sur [0,1]
Z2=rand(N,1); % VA uniforme sur [0,1]

lambda = 1;
X2=-log(1-Z1)/lambda ; % simulation de la VA X
Y2= -log(1-Z2)/lambda; % simulation de la VA Y



Z2 = min(X2,Y2);


figure(2); hold on;

hZ2 = histogram(Z2,'FaceColor','magenta','Normalization','pdf');
hZ2.BinWidth = 0.05;



title("Pour les lois de poissons");

% Simulation  theorique

z2 = 0:0.1:(1/lambda) + 4*(1/(lambda^2));
fz2 = 2*lambda*exp(-2*lambda*z2);
pz2 = plot(z2,fz2,'black');
set(pz2,'LineWidth',1.5);



