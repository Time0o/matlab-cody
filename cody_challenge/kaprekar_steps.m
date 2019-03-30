function y = kaprekar_steps(x)
    y = 0;

    while x ~= 6174
        digits = sprintf('%04s', num2str(x));

        x_desc = str2double(sort(digits, 'Descend'));
        x_asc = str2double(sort(digits));

        x = x_desc - x_asc;
        if x == 0
            y = Inf;
            return
        end

        y = y + 1;
    end
end
