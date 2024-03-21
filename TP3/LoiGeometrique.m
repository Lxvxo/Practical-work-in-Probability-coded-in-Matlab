function [n] =LoiGeometrique(p)

n = 0;

x = 0;

    while x == 0
        n = n + 1;
        if rand < p
            x = 1;

        end
    end
end

