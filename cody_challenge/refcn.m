function s2 = refcn(s1)
    two_part_states = {
        'New Hampshire',
        'New Jersey',
        'New Mexico',
        'New York',
        'North Carolina',
        'North Dakota',
        'Rhode Island',
        'South Carolina',
        'South Dakota',
        'West Virginia'
    };

    s_list = strsplit(s1);

    i = 1;
    while i < length(s_list)
        if ismember([s_list{i} ' ' s_list{i + 1}], two_part_states)
            s_list{i} = '';
            s_list(i + 1) = [];
        else
            i = i + 1;
        end
    end

    s2 = strjoin(s_list);
end


