require 'rubygems'

file = File.open('urls.txt', 'r')
str = ''
while (url = file.gets)
	url = url.strip
	str += "'"+url+"', "
end
puts str
