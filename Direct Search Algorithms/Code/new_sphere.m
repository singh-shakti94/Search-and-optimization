% from: https://www.sfu.ca/~ssurjano/Code/spherefm.html
function [out] = new_sphere(xx)
d = length(xx);
sum = 0;
for ii = 1:d
	xi = xx(ii);
	sum = sum + xi^2;
end

out = sum;

end