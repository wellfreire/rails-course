require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER=OpenSSL::SSL::VERIFY_NONE 

doc = Nokogiri::HTML(open('https://twitter.com/caelum'))
items = doc.css ".content"
items.each do |item|
	autor = item.css(".fullname").first.content
	tweet = item.css('.js-tweet-text').first.content

	puts autor
	puts tweet
	puts 

end