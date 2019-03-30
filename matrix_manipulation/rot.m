function y = rot(x)
    y = zeros(size(x, 2), size(x, 1));

    for i = 1:size(x, 1)
        y(:, i) = flip(x(i, :));
    end
end
