function out = voltage(V,R)
    % V, for the voltage of the supply in volts and 
    % R, a vector of the values of the resistors in ohm
    % calculate
    M=[ 1/R(1)+1/R(7)+1/R(2) , -1/R(7), 0;
        -1/R(7), 1/R(3)+1/R(7)+1/R(8)+1/R(4), -1/R(8);
        0, -1/R(8), 1/R(5)+1/R(8)+1/R(6)];
    % 
    b=[ V/R(1);
        V/R(3);
        V/R(5)];
    % special conditions
    if R(1)==0
        M(1,1)=1;
        M(1,2)=0;
        b(1)=V;
    end
    if R(2)==0
        b(1)=0;
    end
    if R(3)==0
        M(2,1)=0;
        M(2,2)=1;
        M(2,3)=0;
        b(2)=V;
    end
    if R(4)==0
        b(2)=0;
    end
    if R(5)==0
        M(3,2)=0;
        M(3,3)=1;
        b(3)=V;
    end
    if R(6)==0
        b(3)=0;
    end
    % compute
    out=M\b;
end