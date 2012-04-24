require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mongoid'
require 'bson'
require 'kaminari'
require '../app/models/company.rb'

	
Mongoid.load!("/home/hnh/workspace/chatid/config/mongoid.yml")


Company.all(:conditions => {:name => ""}).each do |company|
	begin
		puts company
		domain = company.domain
		doc = nil
		timeout(10) do
			doc = Nokogiri::HTML(open("http://"+domain))
		end
		title = doc.at_css("title").text
		ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
		company.name = ic.iconv(title)
		company.save
	rescue RuntimeError, SocketError, NoMethodError, OpenURI::HTTPError, Errno::ETIMEDOUT, EOFError, Errno::EHOSTUNREACH, Timeout::Error, Errno::ECONNREFUSED, Errno::ECONNRESET, Net::HTTPBadResponse, URI::InvalidURIError, Errno::ENETUNREACH
	puts "err.."	
	end
end



