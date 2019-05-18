require_relative 'lib/convertor'

start_time = Time.now

 p Converter::number_to_words("6686787825")
 #p Converter::number_to_words("2282668687")
end_time = Time.now

puts "Execution time---#{end_time - start_time}----"


=begin

Output : 

[prashant@HP-4530s-005 PhoneDictionary](master)$ ruby word_search_by_binary_search.rb

[["MOTORTRUCK"], [["NOUN", "STRUCK"], ["ONTO", "STRUCK"]], [["MOTOR", "TRUCK"], ["MOTOR", "USUAL"], ["NOUNS", "TRUCK"], ["NOUNS", "USUAL"]]]

Execution time---0.876216651----
	
=end