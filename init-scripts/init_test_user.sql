-- Создаем тестового пользователя
CREATE USER test_user WITH PASSWORD 'test_password';

-- Создаем тестовую базу данных
CREATE DATABASE test_db OWNER test_user;

-- Даем права на использование базы данных
GRANT ALL PRIVILEGES ON DATABASE test_db TO test_user;

-- Если нужно дать доступ к схеме public (при повторных запусках)
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO test_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO test_user;
