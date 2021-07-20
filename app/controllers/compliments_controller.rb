class ComplimentsController < ApplicationController
  def index
    @sincom = Sincom.all.sample
    @dubcom = [Precom.all.sample, Pastcom.all.sample]
  end
end
