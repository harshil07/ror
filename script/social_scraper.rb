require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mongoid'
require 'bson'
#require 'kaminari'
require '../app/models/company.rb'

	
Mongoid.load!("/home/hnh/workspace/chatid/config/mongoid.yml")
count =0
Company.all.each do |company|
	begin
		puts company
		domain = company.domain
		fb_done = false
		tw_done = false
		gp_done = false
		company.social.each do |s|
			if s.match(/(.*)facebook.com(.*)/)
				fb_done = true
			elsif s.match(/(.*)plus.google.com(.*)/)
				gp_done = true
			else s.match(/(.*)twitter.com(.*)/)
				tw_done = true
			end	
		end

		if !fb_done or !tw_done or !gp_done
			doc = nil
			timeout(10) do
				doc = Nokogiri::HTML(open("http://"+domain))
			end
			doc.xpath('//a[@href]').each do |doc_link|
	  			link = doc_link['href']
				found_match = false
				if !link.nil? 
					if fb_done and tw_done and gp_done
						break
					elsif !fb_done and link.match(/(.*)facebook.com(.*)/)
						fb_done  = true
						found_match = true
					elsif !gp_done and link.match(/(.*)plus.google.com(.*)/) 
						gp_done = true
						found_match = true
					elsif !tw_done and link.match(/(.*)twitter.com(.*)/)
						tw_done = true
						found_match = true
					end					
					if found_match
						ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
						company.social << ic.iconv(link)
						company.save
					end
				end
			end
		end
	rescue RuntimeError, SocketError, OpenURI::HTTPError, Errno::ETIMEDOUT, EOFError, Errno::EHOSTUNREACH, Timeout::Error, Errno::ECONNREFUSED, Errno::ECONNRESET, URI::InvalidURIError, Errno::ENETUNREACH, Net::HTTPBadResponse
	puts "err.."
	end
	count += 1
	#puts count
end



