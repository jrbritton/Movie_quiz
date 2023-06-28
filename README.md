# Movie_quiz
A small example of plotting data in ggplot and running linear regression models on some data from a 1990s movie quiz. This was demonstrated as part of a class I taught on data collection and analysis.

The original question was to ask whether age affected performance on the quiz. The data was collected from students in the class and a few older people. The script goes through several models that are supposed to be slightly better as they go on.

Note: This was intentionally designed with some flaws, since it was supposed to be a demonstration on how to design a study and some of the problems that might arise from a poor design. For example, the ages of the participants are not well-balanced and are not really suitable for a fair regression model.

# Model 1
The first model simply looks at the dependent variable 'score' in relation to the independent variable of 'age'.

# Model 2
The second model attempts to improve the age scale by centring the data.

# Model 3
The third model includes the variables 'Movie' and 'Lang', which are the participants' ratings on their love of movies from 1-10 and their native language, respectively.

# Model 4
The fourth model adds second language as well.