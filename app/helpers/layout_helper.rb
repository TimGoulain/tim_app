# encoding: utf-8
module LayoutHelper

  def alert_class(flash_type)
    case flash_type
    when "alert", "error"
      "alert-danger"
    when "notice"
      "alert-success"
    else
      "alert-#{flash_type}"
    end
  end

end
