function [R, Fs] = audCompressedSensing( imname,ratio )
%IMCAPTURE Summary of this function goes here
%   Detailed explanation goes here

  R = [];
  [Q,Fs] = wavread(imname);
  
  imsize = size(Q);
  nlines = imsize(1);
  ncolumns = imsize(2);
  npixels = nlines*ncolumns;
  pixels2get = floor(npixels*ratio);
  
  R = Q;
  for i=1:nlines,
      for j=1:ncolumns,
          R(i,j,:) = 0;
      end
  end
  

%   for i=1:nlines,
%       R{i} = {};
%   end
%   
% for i=1:pixels2get,
      % x = floor(rand(1)*nlines);
      % y = floor(rand(1)*ncolumns);
%  for x = 1:nlines,
 %     for y = 1:ncolumns,
%        if (not exist(R{x})) or (not isempty(R{x}))
%            R{x} = [[y, Q{x,y}]];
%        else
%            R{x} = [R{x}, [y, Q{x,y}]];
%        end
%      end
%  end
   
%main hesitate inner loop
    for i=1:pixels2get,
         x = ceil(rand(1)*nlines);
         y = ceil(rand(1)*ncolumns);
         R(x,y,:) = Q(x,y,:);
    end
    
%     H = [0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235; 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235 0.01235];
%     H = H/ratio;
%    R = audioFilter(R);
end
