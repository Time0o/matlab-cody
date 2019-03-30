function y = remove_nan(x)
    y = x;

    i = 1;
    while i <= size(y, 1)
        if any(isnan(y(i, :)))
            y(i, :) = [];
        else
            i = i + 1;
        end
    end
end
