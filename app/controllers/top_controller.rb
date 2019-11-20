class TopController < ApplicationController
  def index
    @q = House.ransack(params[:q])
    @houses = @q.result(distinct: true)
  end
end
