class ComplimentsController < ApplicationController
  def index
    @precom = Precom.all.sample
    @pastcom = Pastcom.all.sample
  end
end
