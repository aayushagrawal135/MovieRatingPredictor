function sum = delta(nUsers, tags, nMovies, userRating, userType, movieType)
  sum = zeros(nUsers,tags);
  for j = 1:nUsers  
    for i = 1:nMovies
      if userRating(i,j)!=-1
        sum(j, :) += ((userType(j, :)*movieType(i, :)') - userRating(i,j))*movieType(i, :);
      end
    end
  end
end