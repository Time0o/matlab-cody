function y = common_by_row(x)
    if size(x, 1) == 0
        y = [];
        return
    end

    set = logical(ones(1, size(x, 2)));

    for i = 2:size(x, 1)
        set = set & ismember(x(1, :), x(i, :));
    end

    y = unique(x(1, set));

    if isempty(y)
        y = [];
    end
end
