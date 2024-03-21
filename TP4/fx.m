function [y] = fx(x)

if x < 2 
    y = 0.25*x;
else 
    y = (4 - x)/4;
end

end