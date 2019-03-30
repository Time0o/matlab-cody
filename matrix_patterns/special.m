function m = special(n)
    m = zeros(n);

    m(1, 1) = 1;
    m(end, end) = 1;

    for i = 1:(n - 1)
        m(i, i + 1) = 1;
        m(i + 1, i) = 1;
    end
end
