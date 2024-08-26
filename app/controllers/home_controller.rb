class HomeController < ApplicationController

  def index
  end

  def today_sales
    render 'shared/today_sales'
  end
  
  def room_status
    @rooms = {
      available: Room.available.count,
      engaged: Room.checked_in.count
    }
    render 'shared/room_status'
  end

end
