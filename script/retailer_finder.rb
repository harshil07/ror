require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mongoid'
require 'bson'
require '../app/models/company.rb'

	
Mongoid.load!("/home/hnh/workspace/chatid/config/mongoid.yml")

puts "Enter brand: "
brand = gets

#Company.where(:is_brand => 1).and(:retailers => []).each do |company|
	begin
#		domain = company.name
#		if !domain.nil? or !domain.eql?("")
			doc = Nokogiri::HTML(open("http://www.thefind.com/search?query="+brand))
			doc.xpath('//div[@id="tf_search_filters_right_list_store_container"]//ul//li/label').each do |label|
				ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
				puts ic.iconv(label.text)
				#company.save
			end
		#end
	rescue RuntimeError, SocketError, NoMethodError, OpenURI::HTTPError, Errno::ETIMEDOUT, EOFError, Errno::EHOSTUNREACH, Timeout::Error, Errno::ECONNREFUSED, Errno::ECONNRESET, URI::InvalidURIError, Errno::ENETUNREACH
	puts "err..."
	end
#end



