function [X]=Loi_X(N,n)


X = zeros(1,N);

for i = 1 : N
    
    x = 0;
    y = 0;
    while x == y
        y = randi([1,n]);
        x = randi([1,n]);
    end
    
    X(i) = min([x y]);
    
    
    
end



end