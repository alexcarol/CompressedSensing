function R = decompressor( R )
    nLines = length(R);
   
    for i=1:nLines,
        if (R(i, 1) == 0)
            R(i, 1) = R(i, 2);
        elseif (R(i, 2) == 0)
            R(i, 2) = R(i, 1);
        end
    end
    R(:, 1) = interpolate(R(:, 1));
    R(:, 2) = interpolate(R(:, 2));
end

