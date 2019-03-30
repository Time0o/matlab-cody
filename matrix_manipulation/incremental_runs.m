function y = incremental_runs(x)
    y = zeros(max(x(:)), length(x));

    for i = 1:length(x)
        y(1:x(i), i) = 1:x(i);
    end
end
