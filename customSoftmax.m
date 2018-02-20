function y = customSoftmax(x)

[rows, columns] = size(x);
y = zeros(rows, columns);

  for i = 1: rows
    temp = x(i, :);
    temp = temp .- max(temp);
    temp = exp(temp);
    y(i, :) = temp./sum(temp);
  end     

end  