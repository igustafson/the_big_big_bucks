class Show < ActiveRecord::Base
  def self.upcoming
    self.where("scheduled_for >= ?", Time.now)
  end
end
