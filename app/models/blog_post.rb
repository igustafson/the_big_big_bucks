class BlogPost
  def self.all
    source = 'http://thebigbigbucks.wordpress.com/feed'
    feed = Feedzirra::Feed.fetch_and_parse source
    feed.entries
  end

end