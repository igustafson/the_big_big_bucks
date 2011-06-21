class HomeController < ApplicationController
  def index
    @shows = Show.all
    @tweets = Tweet.find_all_for_user 'thebigbigbucks', :count => 6
    @blog_posts = [BlogPost.first]
    render 'shared/home'
  end
end