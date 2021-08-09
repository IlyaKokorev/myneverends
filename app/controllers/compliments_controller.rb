# frozen_string_literal: true

class ComplimentsController < ApplicationController
  def index
    sincom = [Sincom.all]
    dubcom = [Precom.all, Pastcom]

    @compliment = [sincom, dubcom].sample(1)
  end
end
