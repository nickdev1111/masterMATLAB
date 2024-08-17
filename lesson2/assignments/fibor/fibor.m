function out = fibor(n)
    if n>2
        temp = fibor(n-1);
        out = [temp sum(temp(n-2:n-1))];
    elseif n==1
        out = 1;
    else
        out = [1 1];
    end
end