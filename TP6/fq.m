function [qout] = fq(q)

if (q <= 1) && (q >= 1/2)
    qout = 2 - 1/(2*(q^2));
elseif (q <= 2) && (q >= 1)
   qout = 2/((q^2)) - 1/2;
else
    qout = 0;
end
        
end

