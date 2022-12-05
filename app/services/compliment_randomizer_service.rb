# frozen_string_literal: true

# Сервис для генерации массива уникальных пар комплиментов

class ComplimentRandomizerService
  include DirectCallable

  # @return Array of hashes
  def call
    (single_compliments + double_compliments).shuffle
  end

  private

  # @return Array of hashes
  def single_compliments
    single_compliments = prepare_compliments_ids(SingleCompliment)

    single_compliments.map { { single: SingleCompliment.find(_1).title } }
  end

  # @return Array of hashes
  def double_compliments
    first_compliments_ids = prepare_compliments_ids(FirstCompliment)
    last_compliments_ids = prepare_compliments_ids(LastCompliment)

    last_compliments_ids.map do
      {
        first: FirstCompliment.find(first_compliments_ids.sample).title,
        last: LastCompliment.find(_1).title
      }
    end
  end

  # @return Array
  def prepare_compliments_ids(compliment_type)
    compliment_type.all.map(&:id).shuffle
  end
end
