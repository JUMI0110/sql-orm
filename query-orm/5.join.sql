-- 1번 유저가 작성한 모든 점수(score)
-- user = User.objects.ger(id=1)
-- user.score_set.all()

-- SELECT * 
-- FROM  movies_user JOIN movies_score
-- ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id = 1;

-- 1번영화의 카테고리
-- Movie.objects.get(id=1).categories.all()

-- SELECT *
-- FROM movies_movie JOIN movies_category_movies 
-- ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category 
-- ON movies_category_movies.category_id = movies_category.id
-- WHERE movies_movie.id = 10;

-- drama 카테고리에 속한 모든영화
-- Category.objects.get(name='drama').movies.all()

-- SELECT *
-- FROM movies_category JOIN movies_category_movies
-- ON movies_category.id = movies_category_movies.category_id
-- JOIN movies_movie
-- ON movies_category_movies.movie_id = movies_movie.id
-- WHERE movies_category.name = 'drama';


--group by
-- 나라를 기준으로 함수 실행
-- User.objects.values('country').annotate(Count('id'))
-- SELECT country, COUNT(*)
-- FROM movies_user
-- GROUP BY country;

-- 나라별 점수 평균
-- User.objects.values('country').annotate(Count('id'), Avg('score__value'))

SELECT country, Count(*), AVG(    11	2.63636363636364
Australia	15	2.46666666666667val    11	2.63636363636364
Australia	15	2.46666666666667ue)
FROM movies_user JOIN movies_score 
ON movies_user.id = movies_score.user_id
GROUP BY country;