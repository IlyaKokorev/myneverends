FROM ruby:3.2.2

# Установка зависимостей
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Установка директории приложения
RUN mkdir /myneverends
WORKDIR /myneverends

# Копирование Gemfile и Gemfile.lock в контейнер
COPY Gemfile Gemfile.lock ./

# Установка bundler версии 2.4.12
RUN gem install bundler -v 2.4.12

# Установка гемов
RUN bundle _2.4.12_ install

# Копирование всего содержимого проекта в контейнер
COPY . ./

# Запуск приложения
CMD ["rails", "server", "-b", "0.0.0.0"]
