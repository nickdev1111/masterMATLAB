function fh = poly_fun(p)
    function polynomial = poly(x)
        exps = 1:length(p);
        polynomial = sum(p.* x.^(exps-1));
    end    
    fh = @poly;
end