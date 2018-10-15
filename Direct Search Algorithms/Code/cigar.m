function [out] = cigar(xx)
alpha = 0.0000001;
[m,n] = size(xx);
diagonal = ones(1,m);
diagonal(1) = alpha;
A = diag(diagonal);
out = xx.'*A*xx;
end