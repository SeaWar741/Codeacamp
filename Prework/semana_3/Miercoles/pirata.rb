require 'nokogiri'
require 'open-uri'

class Page
	def initialize(url)
		promt ="url >"
		puts
		puts "	      Welcome to Chrome for terminal"
		puts '		  ___                _'
		puts '		 / __|___  ___  __ _| |___'
		puts '		| (_ / _ \/ _ \/ _` |   -_)'
		puts '		 \___\___/\___/\__, |_\___|'
		puts '		               |___/       '
		puts
		puts "   Write down the url you wish to discover and hit enter"
		puts
		print promt
		url = gets.chomp
		html_file = open(url)
		@doc = Nokogiri::HTML(File.open(html_file))
	end

	def fetch!
		puts '________________________________________________________________'
		puts'		          Loading…'
		puts'		      ███████████████ 100%'
		puts '________________________________________________________________'
		puts 'Google found the following results:'
		puts '________________________________________________________________'
	end

	def links
		arry = []
		@doc.search(".nav-item > a").each{|link| arry << link ['href']} 
		arry
	end	

	def title
		arry = []
		for i in 0..5
			arry << @doc.search(".nav-item > a")[i].inner_text
		end
		arry[0]="Facebook"
		arry[1]="Twitter"
		arry
	end
end

class Browser 
	def initialize
		@web = Page.new ARGV[0]
	end
	def run!
		@web.fetch!
		links = @web.links
		title = @web.title
		h = Hash[title.zip links]
		h.each do |key,value|
			puts
			puts "#{key} : #{value}"
		end
		puts '________________________________________________________________'
	end

end


chrome = Browser.new

chrome.run!

