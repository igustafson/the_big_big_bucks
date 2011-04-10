class Tweet
  attr_accessor :text, :created_at

  def self.find_all_for_user(username, options={})
    Twitter.user_timeline(username, options).collect do |entry|
      tweet = self.new
      tweet.text = entry.text
      tweet.created_at = Time.parse entry.created_at
      tweet
    end
  end

end