function [out] = nosiy_sphere(x)
[m,n] = size(x);
strength = 1e-6;
out = x.'*x + (x.'*x)*(strength/m)*normrnd(0,0.5);
end

