function y = row_peaks(x)
    y = zeros(size(x));

    for i = 1:size(x, 1)
        [~, argmax] = max(x(i, :));
        y(i, argmax) = x(i, argmax);
    end
end
