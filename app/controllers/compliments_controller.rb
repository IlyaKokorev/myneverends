class ComplimentsController < ApplicationController
  def index
    sincom = [Sincom.all.sample.title]
    dubcom = [Precom.all.sample.title, Pastcom.all.sample.title]

    @compliment = [sincom, dubcom].sample(1)
  end
end
