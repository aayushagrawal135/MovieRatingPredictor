function y = normalize(mat)
  Max = max(mat(:, :));
  Min = min(mat(:, :));
  
  y = (mat.-Min)./(Max-Min);
  
  
  y = 1./(1 + exp((-5.5*(y-1.4))))*10;
end  