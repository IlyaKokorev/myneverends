# Модуль для работы с классом без стейта и инициализации (когда в new не нужно ничего инстанцировать)

module DirectCallable
  extend ActiveSupport::Concern

  class_methods do
    def call(*args, &block)
      new.call(*args, &block)
    end
  end
end