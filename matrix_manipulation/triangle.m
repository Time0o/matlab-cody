function y = triangle(x)
    y = x;
    y(triu(ones(size(y)), 1) == 1) = 0;
end
