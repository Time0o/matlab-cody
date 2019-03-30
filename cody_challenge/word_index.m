function [word_table, str_index_list] = word_index(str_list)
    str_list = str_list(:);

    word_table = {};
    for i = 1:length(str_list)
        word_table = union(word_table, strsplit(str_list{i}));
        disp(word_table);
    end

    word_table = word_table';

    str_index_list = cell(1, length(str_list));
    for i = 1:length(str_list)
        words = strsplit(str_list{i});

        ind = zeros(length(words));
        for j = 1:length(words)
            ind(j) = find(strcmp(word_table, words{j}));
        end

        str_index_list{i} = ind;
    end
end
