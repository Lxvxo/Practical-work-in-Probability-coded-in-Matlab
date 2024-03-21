clear variables;
close all;
% 
% 
% % 1)
% 
% N = 10000 % NOMBRE de lancers
% 
% 
% X = LancerDeSixFaces(N);
% 
% hX=histogram(X);  
% disp(['nombre de classes : ',num2str(hX.NumBins)]); 
% disp(['les effectifs : ',num2str(hX.Values)]);

% % 2)

% POUR A
K = 10000;
A  = zeros(1,K);
c = 0;
for h = 1 : K
    verif = 0;
    X = LancerDeSixFaces(4);
    for k = 1 : 4
        if X(k) == 6
            verif = 1;
            c = c+1;
            break
        end
    end
    A(h) = verif;
end

% Proba 
pa = c/K % probabilite de reussite  


% POUR B
K = 10000;
B  = zeros(1,K);
c = 0;
for h = 1 : K
    verif = 0;
    X1 = LancerDeSixFaces(24);
    X2 = LancerDeSixFaces(24);
    for k = 1 : 24
        if X1(k) == 6 && X2(k) == 6
            c = c +1;
            verif = 1;
            break
        end
    end
    B(h) = verif;
end

% Proba 
pb = c/K % probabilite de reussite  

       
            
        