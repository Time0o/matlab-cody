function b = bubbles(a)
    b = zeros(size(a));

    for i = 1:size(a, 2)
        col = a(:, i);
        b(:, i) = vertcat(repelem(0, sum(col == 0))', col(col ~= 0));
    end
end
