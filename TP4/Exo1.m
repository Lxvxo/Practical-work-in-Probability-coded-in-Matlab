% EXO 1
clear variables;
close all;
a = -3;
b = 2;
N = 1000;
X = zeros(1,N);

for k = 1 : N
    X(k) = Loi_Uniforme(a,b);
end
figure(1); title ("Loi Uniforme continue sur [" + a + "," + b + "]");hold on

hX = histogram(X,'FaceColor','magenta','Normalization','pdf');
axis([a b 0 1]);
hX.BinWidth = 0.1;

x = [a,b];
y = [1/(abs(b-a)),1/(abs(b-a))];

plot(x,y,'k');



E_X_empirique = mean(X);

Ecart_type_X_empirique = std(X);


E_X_theorique = (a + b)/2;

Ecart_type_X_theorique =  sqrt(((b-a)^2)/12);

