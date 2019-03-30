function m = mirror_anti_diag(n)
    m = zeros(n);

    for i = 1:n
        for j = 1:(n - i)
            m(i, j) = i + j - 1;
        end

        m(i, n - i + 1) = n / 2;
    end

    m = m + rot90(fliplr(m), -1);
end
