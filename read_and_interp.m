function t = read_and_interp(s)
    % parse rows
    cell2row = @(c) str2double(strsplit(strtrim(c)));

    values = cellfun(cell2row, s(2:end), 'UniformOutput', false);

    % convert to matrix
    values = reshape(cell2mat(values), length(s) - 1, 2);

    % interpolate missing values
    t = values(:, 2)';
    for i = 1:length(t)
        if t(i) == 9999
            j = i + 1;
            while j < length(t) && t(j) == 9999
                j = j + 1;
            end

            t(i:(j - 1)) = linspace(t(i - 1) + 1, t(j) - 1, j - i);
        end
    end
end
