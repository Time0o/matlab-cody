function c = goldbach2(n)
    c = 0;

    p = primes(n);
    for i = 1:length(p)
        for j = i:length(p)
            if p(i) + p(j) == n
                c = c + 1;
            end
        end
    end
end
