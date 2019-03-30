function p = pascal_mat(n)
    p = zeros(n + 1);
    
    for j = 1:(n + 1)
        for i = j:(n + 1)
            p(i, j) = nchoosek(i - 1, j - 1);
        end
    end
end
