function w = normalEqWithBias(Xtrain, Ytrain, Bias)
  
  a = Xtrain*Ytrain;
  b = (Xtrain*Bias + Bias'*Xtrain).*1/2;
  c = inv(Xtrain'*Xtrain);
  
  w = c*(a-b);
  
end  