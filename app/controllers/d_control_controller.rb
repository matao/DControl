class DControlController < ApplicationController
  def index
    @selected = Host.all
  end
  def action
    @items = params[:graph][:items]
    @compare = params[:graph][:compare]

    #render :text => "Got: #{@items} and #{@compare}"
    
    redirect_to "/bargraph/#{@items}"
  end

end