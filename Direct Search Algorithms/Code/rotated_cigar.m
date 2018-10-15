function [out] = rotated_cigar(xx)
alpha = 0.0000001;
[m,n] = size(xx);
diagonal = ones(1,m);
diagonal(1) = alpha;
A = diag(diagonal)+100;
out = xx.'*A*xx;
end