require 'rubygems'
require 'nokogiri'
require 'open-uri'

(1..5).each do |i|
	doc = Nokogiri::HTML(open("http://www.internetretailer.com/top500/list/?page="+i.to_s))
	File.open('test.txt', 'a') do |f|  
	  	doc.xpath("//p[@class = 'company_name']/a").each do |node|
			f.puts node.text
		end
	end 
end
