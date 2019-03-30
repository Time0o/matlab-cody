function alpha_list = alphabetize(list)
    lastname = @(name) regexp(name, '\S*$', 'match');
    lastnames = cellfun(lastname, list);

    [~, i] = sort(lastnames);
    alpha_list = list(i);
end
