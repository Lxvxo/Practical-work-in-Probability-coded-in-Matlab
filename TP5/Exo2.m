clear variables;
close all;

%a
K = [3 4 5 6 7 8];
X = [4/20 1/20 3/20 7/20 2/20 3/20]; 

figure(1);
subplot(311);
hX = bar(K,X);
%axis([2 9 0 1]);
title('P(X = k)');

E_X = 0;
E_X2 = 0;

for i = 1 : length(X)
    E_X = E_X + K(i)*X(i);
    E_X2 = E_X2 + K(i)^2*X(i);
end

V_X = E_X2 - (E_X)^2;

txt_EX = "E(X) = " + E_X;
txt_Ecart_X = "sigma(X) = " + sqrt(V_X);
text(2,0.35,txt_EX,'Interpreter','latex');
text(2,0.3,txt_Ecart_X,'Interpreter','latex');

K_bis = 6:1:16;
X_bis = conv((1/20)*[4,1,3,7,2,3],(1/20)* [4,1,3,7,2,3]);
subplot(312);
hX_bis = bar(K_bis,X_bis);
%axis([5 17 0 1]);
title('P(X1 + X2 = k)');

E_X_bis = 0;
E_X2_bis = 0;

for i = 1 : length(X_bis)
    E_X_bis = E_X_bis + K_bis(i)*X_bis(i);
    E_X2_bis = E_X2_bis + K_bis(i)^2*X_bis(i);
end

V_X_bis = E_X2_bis - (E_X_bis)^2;

txt_EX_bis = "E(X) = " + E_X_bis;
txt_Ecart_X_bis = "sigma(X) = " + sqrt(V_X_bis);
text(5,0.18,txt_EX_bis,'Interpreter','latex');
text(5,0.15,txt_Ecart_X_bis,'Interpreter','latex');

% c et d
u = (1/20)*[4,1,3,7,2,3];
n = 15;
Somme_X = u;
for k = 2 : n
    Somme_X = conv(Somme_X,u);
end

Somme_K = 3*n:1:8*n;

subplot(313);
hSomme_X = bar(Somme_K,Somme_X);
title('P(X1 + X2 + ... + Xn = k)');

E_Somme_X = 0;
E_Somme_X2 = 0;

for i = 1 : length(Somme_X)
    E_Somme_X = E_Somme_X + Somme_K(i)*Somme_X(i);
    E_Somme_X2 = E_Somme_X2 + Somme_K(i)^2*Somme_X(i);
end

V_Somme_X = E_Somme_X2 - (E_Somme_X)^2;

txt_ESomme_X = "E(X) = " + E_Somme_X;
txt_Ecart_Somme_X = "sigma(X) = " + sqrt(V_Somme_X);
text(n*3.5,0.05,txt_ESomme_X,'Interpreter','latex');
text(n*3.5,0.04,txt_Ecart_Somme_X,'Interpreter','latex');

mu = n*E_Somme_X;
sigma  = sqrt(n)*sqrt(V_Somme_X);
x = mu-4*sigma:h:mu+4*sigma;
fx = exp(-((x-mu).^2)/(2*sigma^2))*(1/(sigma*sqrt(2*pi)));
p2 = plot(x,fx,'black');
set(p2,'LineWidth',1.5);


















