module ApplicationHelper

  def get_flash_class(type)
    return 'success' if type == 'notice'
    return 'danger' if type == 'alert'
  end

end
