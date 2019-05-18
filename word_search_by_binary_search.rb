require_relative 'lib/convertor'

start_time = Time.now

 p Converter::number_to_words("6686787825")
 #p Converter::number_to_words("2282668687")
end_time = Time.now

puts "Execution time---#{end_time - start_time}----"


=begin

Output : 

[["MOTORTRUCK"], [["NOUN", "STRUCK"], ["ONTO", "STRUCK"]], [["MOTOR", "TRUCK"], ["MOTOR", "USUAL"], ["NOUNS", "TRUCK"], ["NOUNS", "USUAL"]]]
[Finished in 1.1s]
	
=end