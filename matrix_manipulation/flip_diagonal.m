function y = flip_diagonal(x)
    y = x;
    y(1:(size(y, 1) + 1):end) = flip(diag(y));
end
