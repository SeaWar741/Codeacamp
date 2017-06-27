require 'nokogiri'
require 'open-uri'
class TwitterScrapper
	def initialize(url)
		html_file = open(url)
		@doc = Nokogiri::HTML(File.open(html_file))
	end

	def extract_username
		profile_name = @doc.search(".ProfileHeaderCard-name > a")
		p "Username: #{profile_name.first.inner_text}"
	end

	def extract_tweets
		arry = []
		tweet = @doc.search(".tweet-text")
		date = @doc.search("._timestamp")
		retweets = @doc.search(".js-actionRetweet")
		stats = @doc.search(".ProfileNav-stat")
		values = stats.inner_text.split
	if values[4].tr('^A-Za-z0-9', '').to_f > 8 #$-----> error
		for i in 0..10
			p"#{date[i].inner_text}: #{tweet[i].inner_text} Retweets: #{retweets[i].inner_text.split[1]}"
		end
	else
		for i in 0..2
			p"#{date[i].inner_text}: #{tweet[i].inner_text} Retweets: #{retweets[i].inner_text.split[1]}"
		end
	end
end

def extract_stats
	stats = @doc.search(".ProfileNav-stat")
	values = stats.inner_text.split
	p"Tweets: #{values[4]} Following: #{values[7]} Followers:#{values[10]} Favorites: #{values[15]}"
end
end

twitter = TwitterScrapper.new ARGV[0]

twitter.extract_username
p"----------------------------------------------------------------------------"
twitter.extract_stats
p"----------------------------------------------------------------------------"
twitter.extract_tweets
