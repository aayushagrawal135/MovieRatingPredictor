clear;
clc;

%data input - userRating | Tags of each movie, movietype
userRating = [5 5 0 0; 5 -1 -1 0; -1 4 0 -1; 0 0 5 4; 0 0 5 -1];
[nMovies nUsers] = size(userRating);

movieType = [1 0.9 0; 1 1 0.01; 1 0.99 0; 1 0.1 0; 1 0 0.9];
[nMovies tags] = size(movieType);

%random intializations
userType = rand(nUsers, tags)*5;
alpha = 0.01;
iteration = 300;

%error per iteration stored here!
errorPlot = zeros(1,iteration);

for ep = 1:iteration
  error = delta(nUsers, tags, nMovies, userRating, userType, movieType);
  userType = userType - alpha*error;
  errorPlot(1,ep) = sum(sum(error));
end

predicted = movieType*userType';

recommendation = predicted;
[rMovies Rusers] = size(recommendation);
for i = 1:rMovies
  for j = 1:Rusers
    if userRating(i,j) != -1
      recommendation(i,j) = -1;
    else
      if recommendation(i,j) > 5
        recommendation(i,j) = 5;
      elseif recommendation(i,j) < 0
        recommendation(i,j) = 0;
      end  
    end
  end  
end  
recommendation
plot(errorPlot);