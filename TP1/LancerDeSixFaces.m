function [X]=LancerDeSixFaces(n)

X = zeros(1,n);

for k = 1 : n
    X(k) = randi([1,6]);
end


end
