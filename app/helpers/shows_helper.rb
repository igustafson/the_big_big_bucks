module ShowsHelper
  def show_date(show)
    date_string(show.scheduled_for)
  end

  def show_time(show)
    time_string(show.scheduled_for)
  end

  def show_price(show)
    return nil if show.price.nil?
    return 'Free' if show.price == 0
    number_to_currency(show.price)
  end
end