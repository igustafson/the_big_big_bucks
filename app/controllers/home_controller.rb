class HomeController < ApplicationController
  def index
    @shows = Show.all
    @tweets = Tweet.find_all_for_user('thebigbigbucks', :count => 3, :trim_user => true)
    render 'shared/home'
  end
end