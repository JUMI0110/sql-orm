명령어 closepoll



ctrl shift p open database sqlite

번역본을 테이블로 만드는 과정 볼 수 있는 명령어
python manage.py sqlmigrate movies(appname) 0001(몇번째)

SQL 
; 끝을 알려줌

python manage.py shell_plus
# Shell Plus Model Imports
from django.contrib.admin.models import LogEntry
from django.contrib.auth.models import Group, Permission
from movies.models import Actor, Category, Movie, Score, User
from django.contrib.contenttypes.models import ContentType
from django.contrib.sessions.models import Session
# Shell Plus Django Imports
from django.core.cache import cache
from django.conf import settings
from django.contrib.auth import get_user_model
from django.db import transaction
from django.db.models import Avg, Case, Count, F, Max, Min, Prefetch, Q, Sum, When
from django.utils import timezone
from django.urls import reverse
from django.db.models import Exists, OuterRef, Subquery


django lookup 
filter(__lte) __lte less then equal
__gte 