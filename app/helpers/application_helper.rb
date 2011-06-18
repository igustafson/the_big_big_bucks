module ApplicationHelper
  def date_string(datetime)
    datetime = Time.parse(datetime) if datetime.is_a? String
    datetime.strftime('%m/%d/%Y')
  end

  def time_string(datetime)
    datetime = Time.parse(datetime) if datetime.is_a? String
    datetime.strftime('%I:%M%p')
  end

  def datetime_string(datetime)
    date_string(datetime)+' '+time_string(datetime)
  end
end
