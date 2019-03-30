function y = surrounded(x)
    y = ones(size(x) + 2);
    y(2:(end - 1), 2:(end - 1)) = x;
end
