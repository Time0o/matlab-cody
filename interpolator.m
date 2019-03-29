function vb = interpolator(va, a, b)
    i = find(a >= va, 1);

    if a(i) == va
        vb = b(i);
    else
        prop = (va - a(i - 1)) / (a(i) - a(i - 1));
        vb = b(i - 1) + prop * (b(i) - b(i - 1));
    end
end
