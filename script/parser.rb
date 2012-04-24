require 'rubygems'
require 'mongoid'
require 'csv'
require '../app/models/company.rb'

i = 0

Mongoid.load!("/home/hnh/workspace/chatid/config/mongoid.yml")

#db = Mongo::Connection.new("localhost").db("chatid_development")
#companies = db.collection("companies")

CSV.foreach("/home/hnh/workspace/chatid/tmp/LivePerson - Lead List 11.21.11.csv") do |row|
	if i != 0
		company = Company.new
		company.name = ''
		company.domain = row[0]
		company.qrank = row[1]
		company.arank = row[2]
		company.server_location = row[3]
		company.deepdive = row[4]
		company.chat = row[5]
		company.is_brand = false
		company.retailers = Array.new
		company.social = Array.new
		company.save
	end
	i += 1
end

	
