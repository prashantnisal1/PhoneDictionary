
module Converter


    @@phone_letter = {
        2 => %w(a b c),
        3 => %w(d e f),
        4 => %w(g h i),
        5 => %w(j k l),
        6 => %w(m n o),
        7 => %w(p q r s),
        8 => %w(t u v),
        9 => %w(w x y z)
    }

    @@dictionary = File.readlines('dictionary.txt').map{|w| w.strip}

    def self.number_to_word(phone_number)
        combinations = nil
        phone_number.each_char do |num_char|
            word_array = @@phone_letter[num_char.to_i]
            if combinations
                combinations = combinations.product(word_array)
            else
                combinations = word_array
            end
        end
        combinations.map!{ |e| e.flatten().join.upcase }
        combinations.select!{ |word| search_word_in_dictionary(word) }
        combinations
    end



    def self.number_to_words(phone_number)
        total_words = []
        total_words << full_words = number_to_word(phone_number)

        last = phone_number.dup
        first = ''
        while last.length>3 do
          first += last.slice!(0)
          next if first.length < 3
          # puts "--#{first}---#{last}"
          first_words = number_to_word(first)
          last_words = number_to_word(last)
          

          if first_words.count >0 && last_words.count>0
            # puts "--#{first_words}---#{last_words}"
            combinations = first_words.product(last_words)
            total_words << combinations
          end
        end
        total_words
    end

    def self.search_word_in_dictionary(word)
        uword = word.upcase
        w = @@dictionary.bsearch{|x| x >= word }
        w == uword
    end
end


