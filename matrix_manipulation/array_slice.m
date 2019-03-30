function y = arraySlice(x, i, d)
    subs = cell(1, ndims(x));
    [subs{:}] = deal(':');

    if d <= ndims(x)
        subs{d} = i;
    end

    y = subsref(x, struct('type', '()', 'subs', {subs}));
end
