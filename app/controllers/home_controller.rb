class HomeController < ApplicationController
  def index
    @shows = Show.all
    @tweets = Twitter.user_timeline('thebigbigbucks', {:count=>6})
    render 'shared/home'
  end
end