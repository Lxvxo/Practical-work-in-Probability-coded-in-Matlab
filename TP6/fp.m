function [pout] = fp(p)


if (p <= 2) && (p >= 1)
    pout = log(p);
elseif (p <= 4) && (p >= 2)
    pout = 2*log(2) - log(p);
else
    pout = 0;
end
        
end

