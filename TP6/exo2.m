clear variables;
close all;



% initialisation
N = 1000;

X = rand(N) + 1;
Y = rand(N) + 1;
S = X + Y;
P = X .* Y;
Q = X ./ Y;

E_X = (1 + 2)/2;
V_X = ((2-1)^2)/12;

E_Y = (1 + 2)/2;
V_Y = ((2-1)^2)/12;





figure(1);
subplot(221);hold on;


% Loi uniforme sur [1,2]
hX = histogram(X,'FaceColor','red','Normalization','pdf');
hX.BinWidth = 0.01;


subplot(222);hold on;
% SOMME
[hs,sout]=hist(S,50); % calcul de l’histogramme de X
bar(sout,hs/trapz(sout,hs)); % affichage de l’histogramme de X
mu_emp_s=mean(S); % moyenne empirique
sigma_emp_s=std(S); % écart type empirique


s = 2:0.1:4;
Fs = zeros(1,length(s));

for k = 1 : length(s)
    Fs(k) = fs(s(k));
end

plt_s = plot(s,Fs,'black');
set(plt_s,'LineWidth',3);

subplot(223);hold on;
% PRODUIT
[hp,pout]=hist(P,50); % calcul de l’histogramme de X
bar(pout,hp/trapz(pout,hp)); % affichage de l’histogramme de X
mu_emp_p=mean(P); % moyenne empirique
sigma_emp_p=std(P); % écart type empirique


p = 1:0.1:4;
Fp = zeros(1,length(p));

for k = 1 : length(p)
    Fp(k) = fp(p(k));
end

plt_p = plot(p,Fp,'black');
set(plt_p,'LineWidth',3);


subplot(224);hold on;
% QUOTIENT
[hq,qout]=hist(Q,50); % calcul de l’histogramme de X
bar(qout,hq/trapz(qout,hq)); % affichage de l’histogramme de X
mu_emp_q=mean(Q); % moyenne empirique
sigma_emp_q=std(Q); % écart type empirique



q = 1/2:0.1:2;
Fq = zeros(1,length(q));

for k = 1 : length(q)
    Fq(k) = fq(q(k));
end

plt_q = plot(q,Fq,'black');
set(plt_q,'LineWidth',3);

% 
% fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp_s,E_X + E_Y);
% fprintf('Ecart type empirique : %f,\t Ecart type théorique : %f\n',sigma_emp_s, sqrt(V_Y + V_Y));
% 
% fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp_p,E_X * E_Y);
% fprintf('Ecart type empirique : %f,\t Ecart type théorique : %f\n',sigma_emp_p, sqrt(V_Y * V_Y));
% 
% 
% fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp_q,E_X / E_Y);
% fprintf('Ecart type empirique : %f,\t Ecart type théorique : %f\n',sigma_emp_q, sqrt(V_Y / V_Y));
