
clear variables;
close all;
% on choisit N points aléatoirement

N = 10000;
X = zeros(1,N); % abscisses
Y = zeros(1,N); % ordonnées

c = 0; % nombres de points à l'intérieur du cercle
figure(1); 
hold on;
for k = 1 : N
    X(k) = rand;
    Y(k) = rand;
    distance = sqrt(X(k)^2 + Y(k)^2);
    if distance <= 1
        c = c + 1;
        plot(X(k),Y(k),'g*');
    else
        plot(X(k),Y(k),'r*');
    end
end

fn = c / N;
pi = 4 * fn
















% on choisit N points aléatoirement

N = 10000;
X = zeros(1,N); % abscisses
Y = zeros(1,N); % ordonnées

c = 0; % nombres de points à l'intérieur du cercle
figure(2); 
hold on;
for k = 1 : N
    X(k) = rand*exp(1);
    Y(k) = rand;
    distance = sqrt(X(k)^2 + Y(k)^2);
    if distance <= 1
        c = c + 1;
        plot(X(k),Y(k),'g*');
    else
        plot(X(k),Y(k),'r*');
    end
end

fn = c / N;
pi = 4 * fn















