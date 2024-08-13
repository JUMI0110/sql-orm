-- Movie.objects.all()

-- SQL
-- SELECT * FROM movies_movie;

-- User.objects.all()
-- SELECT * FROM movies_user;

-- 정렬
-- Movie.objects.all().order_by('year')
-- Movie.objects.all().order_by('-year') DESC(내림차순)
-- SELECT * FROM movies_movie 
-- ORDER BY year;

-- 필터 조회
-- Movie.objects.filter(year=2000)
-- SELECT * FROM movies_movie
-- WHERE year=2000;

-- User.objects.filter(age=30)
-- SELECT * FROM movies_user
-- WHERE age=30;

-- lt : < / lte: <= / gt : > / gte : >=
-- Movie.objects.filter(year__lte=2000)
-- SELECT * FROM movies_movie
-- WHERE YEAR < 2000;

-- Movie.objects.filter(year__gte=2000, year__lte=2010)
-- SELECT * FROM movies_movie
-- WHERE year >= 2000 AND year <= 2010;

-- Movie.objects.filter(Q(year__lte=2000) | Q(year__gte=2010)) (or연산)
-- SELECT * FROM movies_movie
-- WHERE year <=2000 OR year >= 2010;

-- 제외 조회
-- User.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;

-- 데이터 계산
-- Movie.objects.aggregate(Avg('year')) {'year__avg': 1996.7156862745098}
-- SELECT AVG(year) FROM movies_movie;

-- Movie.objects.aggregate(Max('year'))
-- SELECT MAX(year) FROM movies_movie;

-- 1번영화의 score 총합
-- Score.objects.filter(movie_id=1).aggregate(Avg('value'))
-- SELECT AVG(value) FROM movies_score
-- WHERE movie_id = 1;

-- 특정문자 포함
-- Movie.objects.filter(title__contains='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';

-- 특정문자로 시작
-- Movie.objects.filter(title__startswith='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE 'the%';
-- Movie.objects.filter(title__endswith='the')

-- django에서 사용하려면 정규표현식을 사용해야함
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%';

-- 포함
-- Movie.objects.filter(year__in=[2000, 2001])
-- SELECT * FROM movies_movie
-- WHERE year IN (2000, 2001);

-- 범위
-- Movie.objects.filter(year__range=[1990, 2000])
-- SELECT * FROM movies_movie
-- WHERE year BETWEEN 1990 AND 2000;


