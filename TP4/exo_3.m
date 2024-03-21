clear variables;
close all;

N = 100;

a = 0;
b = 4;

I = a:0.1:b;
X_theorique = zeros(1,length(I));

for k = 1 : length(I)
    X_theorique(k) = fx(I(k));
end

figure(1); title ("Densité fx sur [" + a + "," + b + "]");hold on
p = plot(I,X_theorique,'black');
set(p,'LineWidth',1);

%E_X_theorique =

%Ecart_type_X_theorique =  
