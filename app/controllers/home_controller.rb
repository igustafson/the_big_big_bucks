class HomeController < ApplicationController
  def index
    @shows = Show.all
    @blog_posts = [BlogPost.first]
    render 'shared/home'
  end
end