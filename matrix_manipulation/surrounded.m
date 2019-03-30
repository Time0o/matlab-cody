function B = surrounded(A)
    B = ones(size(A) + 2);
    B(2:(end - 1), 2:(end - 1)) = A;
end
