class ApplicationController < ActionController::Base
  before_action :authenticate_hotel!
  add_flash_types :info, :warning
end
