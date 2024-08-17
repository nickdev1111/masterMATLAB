function out = reversal(v)
    if isscalar(v)
        out=v;
    else
        out=[v(end) reversal(v(1:end-1))];
    end
end