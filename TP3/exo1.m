clear variables;
close all;


n_cases=24;
cx=[0:n_cases];
cy=[0:n_cases];
n_impacts = 537;
[CX,CY]=meshgrid(cx,cy);


figure(1);hold on;
mesh(CX,CY,zeros(n_cases+1,n_cases+1));
M=zeros(n_cases, n_cases);

for k = 1:n_impacts
    x = rand *n_cases;
    y = rand*n_cases;
    M(ceil(x),ceil(y)) = M(ceil(x),ceil(y)) +1 ;
    plot(x,y,'r*');
    
end

M = M(:); % ressort un unique vecteur colonne



% histogramme de M
figure(2); hold on
hM=histogram(M);  
disp(['nombre de d impacts maximales sur une zone: ',num2str(hM.NumBins)]);  
disp(['effectifs de zone ayant eu le même nombre d impacts : ',num2str(hM.Values)]);

lambda = mean(M);
N = n_cases*n_cases;
x = 0:n_cases;
y = poisspdf(x,lambda);
bar(x,y*N,0.5);
label1 = 'Empirique';
label2 = 'Theorique';
legend(label1,label2);






















        















