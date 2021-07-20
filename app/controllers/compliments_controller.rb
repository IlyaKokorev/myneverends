class ComplimentsController < ApplicationController
  def index
    sincom = Sincom.all.sample
    dubcom = [Precom.all.sample.title, Pastcom.all.sample.title]

    @compliment = [sincom, dubcom].sample
  end
end
