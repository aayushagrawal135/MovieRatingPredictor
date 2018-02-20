# Movie Rating Predictor

Say a set of movies are given along with their genre quantified on a scale of say 5. Depending on a user's rating pattern, a value must be predicted corresponding to a movie that a user may give to that movie.

For this task, linear regression is used. 
User characteristics are randomly initialized. Characteristics are basically set of vectors each component of which quantifies the interest of the user in a particular genre. Now for the movies that the user has reviewed, output is predicted and error is evaluated wrt given rating. This error is minimized, leading to better characterization of the user.   
