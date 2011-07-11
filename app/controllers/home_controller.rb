class HomeController < ApplicationController
  def index
    @shows = Show.upcoming
    @blog_posts = BlogPost.all[0..2]
    render 'shared/home'
  end
end