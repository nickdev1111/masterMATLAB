function curr_max = recursive_max(vec)
    if isscalar(vec)
        curr_max = vec;
    else
        if vec(1,1)>recursive_max(vec(2:length(vec)))
            curr_max = vec(1,1);
        else
            curr_max = recursive_max(vec(2:length(vec)));
        end
    end
end