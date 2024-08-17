function [f,trace] = fibo_trace(n,t)
    trace = t;
    f = fibo(n);
    function f = fibo(n)
        trace = [trace n];
        if n <= 2
            f = 1;
        else
            f = fibo(n-2) + fibo(n-1);
        end
    end
end