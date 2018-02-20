function w = normalEqWithoutBias(Xtrain, Ytrain)
  
  a = inv(Xtrain'*Xtrain);
  b = Xtrain'*Ytrain;
  w = a*b;
  
end  