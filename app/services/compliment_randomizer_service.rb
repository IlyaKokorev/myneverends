# frozen_string_literal: true

# Сервис создания коллекции комплиментов

class ComplimentRandomizerService
  include DirectCallable

  SINGLE_COMP = SingleCompliment
  FIRST_COMP = FirstCompliment
  LAST_COMP = LastCompliment

  def call
    @compliment_collection ||= generate_compliments_hash
  end

  private

  # @return Array of hashes
  # [{single: 1}, {first: 1, last: 2}, {single: 3}]
  def generate_compliments_hash
    (single_compliments + double_compliments).shuffle
  end

  # @return Array of hashes
  # [{single: 1}, {single: 3}]
  def single_compliments
    single_compliments = prepare_compliments_ids(SINGLE_COMP)

    single_compliments.map { { single: _1 } }
  end

  # @return Array of hashes
  # [{first: 1, last: 2}, {first: 3, last: 4}]
  def double_compliments
    first_compliments = prepare_compliments_ids(FIRST_COMP)
    last_compliments = prepare_compliments_ids(LAST_COMP)

    last_compliments.map { { first: first_compliments.sample, last: _1 } }
  end

  # @return Array
  # [1, 2, 3]
  def prepare_compliments_ids(compliment_type)
    compliment_type.all.map(&:id).shuffle
  end
end
