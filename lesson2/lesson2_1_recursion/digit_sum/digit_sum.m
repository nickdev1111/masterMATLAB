function d = digit_sum(num)
    if ~isscalar(num) || num ~= fix(num)
        error('input must be a positive integer')
    end
    if num==0
        d = num;
    else
        last_digit = (num/10 - fix(num/10))*10;
        d = last_digit + digit_sum(fix(num/10));
    end
end