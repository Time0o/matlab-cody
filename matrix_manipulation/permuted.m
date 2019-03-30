function y = permuted(x)
    y = x;

    rows = size(x, 1);
    for i = 1:rows
        if i <= floor(rows / 2)
            offs = i;
        else
            offs = rows - i + 1;
        end

        [y(i, offs), y(i, end - offs + 1)] = ...
            deal(y(i, end - offs + 1), y(i, offs));
    end
end
