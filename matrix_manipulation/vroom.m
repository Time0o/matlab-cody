function ramp = vrooom(v)
    ramp = zeros(numel(v));

    for i = 1:numel(v)
        ramp(i, 1:(numel(v) - i + 1)) = v(i:end);
    end
end
