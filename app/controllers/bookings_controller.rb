class BookingsController < ApplicationController

  def new
    @customer = Customer.new
    @booking = @customer.bookings.new
  end
end
