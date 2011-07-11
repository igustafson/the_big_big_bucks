module ApplicationHelper
  def date_string(datetime, format='%m/%d/%Y')
    datetime = Time.parse(datetime) if datetime.is_a? String
    datetime.strftime(format)
  end

  def time_string(datetime, format='%I:%M%p')
    datetime = Time.parse(datetime) if datetime.is_a? String
    datetime.strftime(format)
  end

  def datetime_string(datetime)
    date_string(datetime)+' '+time_string(datetime)
  end
end
