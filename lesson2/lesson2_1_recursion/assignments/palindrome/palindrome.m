function p = palindrome(v)
    if length(v)<=3
        p = v(1)==v(end);
    else
        p = v(1)==v(end) * sum(palindrome(v(2:end-1)));
    end
end