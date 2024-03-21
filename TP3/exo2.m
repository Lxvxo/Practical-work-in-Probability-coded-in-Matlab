clear variables;
close all;

N = 1000; 

X = zeros(1,N);
lambda = 0.3;

Y = zeros(1,N);
mu = 0.5;

Z = zeros(1,N);


% Génération de X,Y et Z
for k = 1 : N
    X(k) = LoiGeometrique(lambda);
    Y(k) = LoiGeometrique(mu);
    Z(k) = min(X(k),Y(k));
end


x1 = 0:10;
x2 = geopdf(x1,lambda);

% Affichage

figure(1); 
subplot(131);hold on; bar(x1,x2*N,0.2,'r'); histogram(X);
subplot(132);histogram(Y);
subplot(133);histogram(Z);






