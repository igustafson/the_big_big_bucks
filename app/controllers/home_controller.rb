class HomeController < ApplicationController
  def index
    @shows = Show.all
    @blog_posts = BlogPost.all[0..2]
    render 'shared/home'
  end
end