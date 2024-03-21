%tP2


clear variables;
close all;


N = 10000,

X = zeros(1,N)

p = 0.01;

for k = 1 : N
    
   X(k) = LoiGeometrique(p);
   
end
pk = p^k
% histogramme des effectifs de X 

figure(1);
fprintf('===== Exemple 1 =====\n');
hX=histogram(X);   % hX contient un certains nombre d'informations comme par exemple ...
disp(['nombre de classes : ',num2str(hX.NumBins)]);  % ... le nombres de classes (il y en a 6 : 1 2 3 4 5 6)
disp(['les effectifs : ',num2str(hX.Values)]);       % ... et les effectifs par classe (4 fois 1, 0 fois 2, 7 fois 3, etc ...) 
fprintf('\n');
