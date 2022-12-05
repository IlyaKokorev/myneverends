# frozen_string_literal: true

# Сервис, предоставляющий уникальный комплимент из коллекции комплиментов
# Или создающий новую коллекцию, если старая пуста

class ComplimentOperatorService
  class << self
    def call
      create_compliments_array
      define_compliments_array
      get_compliment
    end

    def create_compliments_array
      @compliments_array ||= ComplimentRandomizerService.call
    end

    def define_compliments_array
      @compliments_array = ComplimentRandomizerService.call if @compliments_array.blank?
    end

    def get_compliment
      @compliments_array.pop
    end
  end
end
