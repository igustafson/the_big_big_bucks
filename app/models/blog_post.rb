class BlogPost
  def self.source
    'http://thebigbigbucks.wordpress.com/feed'
  end

  def self.feed
    Feedzirra::Feed.fetch_and_parse source
  end

  def self.first
    feed.entries.first
  end

  def self.all
    feed.entries
  end

end