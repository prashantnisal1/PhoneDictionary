require_relative '../lib/convertor'
require 'rspec'



RSpec.describe Converter do

	it 'convert 6686787825 phone to expected words' do
     	# expect(Converter::number_to_words("6686787825")).to match_array( [["noun", "struck"], ["onto", "struck"],  ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], "motortruck"] )
     	expect(Converter::number_to_words("6686787825")).to match_array([["MOTORTRUCK"], [["NOUN", "STRUCK"], ["ONTO", "STRUCK"]], [["MOTOR", "TRUCK"], ["MOTOR", "USUAL"], ["NOUNS", "TRUCK"], ["NOUNS", "USUAL"]]])
  	end
end