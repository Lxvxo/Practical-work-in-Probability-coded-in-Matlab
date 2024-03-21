clear variables;
close all;

N = 10000;
a = -3;
b = 2;
Y = rand(1,N);

X = 6.^Y - 4;

figure(1); title ("Loi continu sur [" + a + "," + b + "]");hold on

hX = histogram(X,'FaceColor','magenta','Normalization','pdf');
axis([a b 0 1]);
hX.BinWidth = 0.1;

I = a:0.1:b;
X_theorique = (1/log(6)).*(1./(I+4));




E_X_empirique = mean(X);

Ecart_type_X_empirique = std(X);


%E_X_theorique =

%Ecart_type_X_theorique =  


p = plot(I,X_theorique,'black');
set(p,'LineWidth',1);