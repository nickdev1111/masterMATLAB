sierpinski(1); 
for d=1:9 
    t0 = cputime; 
    sierpinski(d); 
    t(d) = cputime - t0; 
end
plot(t);
grid on