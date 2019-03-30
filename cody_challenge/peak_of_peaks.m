function pmax = peak_of_peaks(nmax)
    pmax = nmax;

    for n = 1:nmax
        pmax = max(pmax, collatz_peak(n));
    end
end

function peak = collatz_peak(n)
    peak = n;

    while n ~= 1
        if mod(n, 2) == 0
            n = n / 2;
        else
            n = 3 * n + 1;
        end

        peak = max(peak, n);
    end
end
