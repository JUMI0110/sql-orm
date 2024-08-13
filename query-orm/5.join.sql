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

-- 특정 영화의 배우 조회
-- Movie.objects.get(id=23).actors.all()
-- SELECT *
-- FROM movies_movie JOIN movies_movie_actors
-- ON movies_movie.id = movies_movie_actors.movie_id
-- JOIN movies_actor
-- ON movies_movie_actors.actor_id = movies_actor.id
-- WHERE movies_movie.id = 23;

--group by
-- 나라를 기준으로 함수 실행
-- User.objects.values('country').annotate(Count('id'))
-- SELECT country, COUNT(*)
-- FROM movies_user
-- GROUP BY country;

-- 나라별 점수 평균
-- User.objects.values('country').annotate(Count('id'), Avg('score__value'))

-- SELECT country, Count(*), AVG(value)
-- FROM movies_user JOIN movies_score 
-- ON movies_user.id = movies_score.user_id
-- GROUP BY country;

-- SELECT year, Count(*), AVG(value)
-- from movies_movie JOIN movies_score
-- ON movies_movie.id = movies_score.movie_id
-- GROUP BY year;



-- 문제1: 영화배우 이름 추가하기
-- INSERT INTO movies_actor(name, age)
-- VALUES ('kim', 30);
-- 문제 3: 모든 배우 목록 가져오기
-- SELECT *
-- FROM movies_actor;
-- 문제: 데이터베이스에 있는 모든 배우의 이름을 가져오세요.
-- SELECT name
-- FROM movies_actor;
-- 문제 4: 특정 배우의 출연 영화 가져오기
-- SELECT *
-- FROM movies_actor JOIN movies_movie_actors
-- ON movies_actor.id = movies_movie_actors.actor_id
-- JOIN movies_movie 
-- ON movies_movie.id = movies_movie_actors.movie_id
-- WHERE movies_actor.name = 'Katelyn Hull';
-- 문제: "배우이름"가 출연한 모든 영화의 제목을 가져오세요.
-- SELECT name, title
-- FROM movies_actor JOIN movies_movie_actors
-- ON movies_actor.id = movies_movie_actors.actor_id
-- JOIN movies_movie 
-- ON movies_movie.id = movies_movie_actors.movie_id
-- WHERE movies_actor.name = 'Katelyn Hull';
