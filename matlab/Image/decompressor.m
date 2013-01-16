function Img = decompressor( R, Pos )
    imsize = size(R);
    nLines = imsize(1);
    nColumns = imsize(2); 
   
    for i=1:nLines,
        intVert(i, :, 1) = interpolate(R(i, :,1), Pos(i, :));
        intVert(i, :, 2) = interpolate(R(i, :,2), Pos(i, :));
        intVert(i, :, 3) = interpolate(R(i, :,3), Pos(i, :));
    end
    for j=1:nColumns,
        intHor(:, j, 1) = interpolate(R(:, j, 1), Pos(:, j));
        intHor(:, j, 2) = interpolate(R(:, j, 2), Pos(:, j));
        intHor(:, j, 3) = interpolate(R(:, j, 3), Pos(:, j));
    end
    Img = intVert/2+intHor/2;
    %Img = R;
end

