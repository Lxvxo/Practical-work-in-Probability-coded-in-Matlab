function [X] = Loi_Uniforme(a,b)

X = rand *abs(b-a) + a;
end