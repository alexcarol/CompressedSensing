function R = interpolate(R, Pos)
    lastindex = 1;
    lastvalue = 0;
    nLines = size(R);
    for i=1:nLines,
        if (Pos(i) ~= 0)
            increment = (R(i) - lastvalue)/(i-lastindex);
            for j=(lastindex+1):(i-1),
                lastvalue = lastvalue + increment;
                R(j) = lastvalue;
            end
            lastvalue = R(i);
            lastindex = i;
        end
    end
end