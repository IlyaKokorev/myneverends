# frozen_string_literal: true

class ComplimentsController < ApplicationController
  def index
    @compliment = get_compliment
  end

  private

  def get_compliment
    ComplimentOperatorService.call
  end
end
