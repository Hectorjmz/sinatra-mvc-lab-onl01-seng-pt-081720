require 'pry'
class PigLatinizer

    def piglatinize(text)
        
        vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
        final_string = ""

        by_words = text.split(" ")

        by_words.each do |word|
            # binding.pry

            piglatinazed = word.chars

            if vowels.include?(piglatinazed.first)
                piglatinazed << "way"
                piglatinazed = piglatinazed.join
                # binding.pry
            else
                while !vowels.any?(piglatinazed.first)
                    piglatinazed = piglatinazed.rotate(1)
                end
                piglatinazed << "ay"
                piglatinazed = piglatinazed.join
            end
            final_string << piglatinazed + " "
            
            
        end
        
        final_string = final_string.strip
        final_string

    end

end

