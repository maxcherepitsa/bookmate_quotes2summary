#!/usr/bin/ruby
require 'rubygems'
require 'json'
require 'pp'
require 'active_support/all'


json = File.read('testjson.json')
parsed_json = ActiveSupport::JSON.decode(json)
 
quotes_number = parsed_json.length-1

#pp parsed_json[99]['content']



$i = quotes_number
begin
	open('book_quotes.txt', 'a') { |f|
  	f.puts parsed_json[$i]['content'].chomp('"').reverse.chomp('"').reverse
  	f.puts "\n"
  	
	}
    $i -=1
end while $i >= 0