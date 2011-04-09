module ApplicationHelper
  def date_string(datetime)
    datetime.strftime('%m/%d/%Y')
  end

  def time_string(datetime)
    datetime.strftime('%I:%M%p')
  end
end
