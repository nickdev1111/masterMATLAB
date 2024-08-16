function vargout = distribute(v)
    for ii = 1:length(v)
        vargout{ii} = v(ii);
    end
end