function [sout] = fs(s)

if (s <= 3) && (s >= 2)
    sout = s - 2;
elseif (s <= 4) && (s >= 3)
    sout = 4 - s;
else
    sout = 0;
end
        
end

