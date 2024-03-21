n = 1000;
u = rand(1,N);
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
