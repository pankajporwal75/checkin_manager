class HomeController < ApplicationController

  def index
  end

  def today_sales
    render 'shared/today_sales'
  end

end
