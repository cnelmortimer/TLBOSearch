% Example objective function

function cost = Sphere(X)
  cost = 0.0;
  for i=1:1:length(X) 
    cost = cost + (X(i)^2);
  end
end
