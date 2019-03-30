function v = volcano(n)
    assert(n > 0);

    if n == 1
        v = 1;
        return
    end

    v = ones(4 * n - 3);

    for i = 2:(2 * n - 2)
        if i > n
            val = 2 * n - i;
        else
            val = i;
        end

        v(i:(end - i + 1), i:(end - i + 1)) = val;
    end

    i = 2 * n - 1;
    v(i, i) = 1;
end
