function y = bubbles(x)
    y = zeros(size(x));

    for i = 1:size(x, 2)
        col = x(:, i);
        y(:, i) = vertcat(repelem(0, sum(col == 0))', col(col ~= 0));
    end
end
