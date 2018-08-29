class String
    def vowels
        self.scan(/[aeiou]/i)
    end
end

puts "this is a test".vowels.join("-")
