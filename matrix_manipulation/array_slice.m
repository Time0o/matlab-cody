function S = arraySlice(A, i, d)
    subs = cell(1, ndims(A));
    [subs{:}] = deal(':');

    if d <= ndims(A)
        subs{d} = i;
    end

    S = subsref(A, struct('type', '()', 'subs', {subs}));
end
