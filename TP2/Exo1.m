%tP2


clear variables;
close all;


n = 10 % boules numérotées de 1 à n

N = 1000 % 100 itérations

% X empirique

X_empirique = Loi_X(N,n);


% X théorique

X_theorique = zeros(1,N);
c = 1; % pointeur
for i = 1 : n-1
    x = round(N*(2*(n-i))/(n*(n-1)))
    for k = 1 : round(N*(2*(n-i))/(n*(n-1)))
            X_theorique(c) = i;
            c = c+1;
        
    end
    
end


% histogramme des effectifs de X 

figure(1); hold on
fprintf('===== Histo de X =====\n');

hX_empirique = histogram(X_empirique);  

disp(['Boules numérotées : ',num2str(hX_empirique.NumBins)]);  % ... le nombres de classes (il y en a n-1, de 1 à n-1)

disp(['les effectifs : ',num2str(hX_empirique.Values)]);       % ... et les effectifs par classe 

hX_theorique = histogram(X_theorique);  

disp(['Boules numérotées : ',num2str(hX_theorique.NumBins)]);  % ... le nombres de classes (il y en a n-1, de 1 à n-1)

disp(['les effectifs : ',num2str(hX_theorique.Values)]);       % ... et les effectifs par classe 

fprintf('\n');



% Calcul de l'espérance et de l'ecart type

E_X_theorique = (n +1)/3;

Ecart_type_theorique = (n^2 - n - 2)/18;

E_X_empirique = mean(X_empirique);

Ecart_type_empirique = std(X_empirique);

fprintf('\n');
fprintf('Espérance théorique : %.2f ', E_X_theorique);
fprintf('\n');
fprintf('Espérance empirique : %.2f', E_X_empirique);

fprintf('\n');
fprintf('Ecart type théorique : %.2f', Ecart_type_theorique);
fprintf('\n');
fprintf('Ecart type empirique : %.2f', Ecart_type_empirique );
fprintf('\n');

