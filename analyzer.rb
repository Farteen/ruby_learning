# line_count = 0
# text = ''
# File.open("text.txt").each do |line|
#     line_count += 1
#     text << line
# end
# puts line_count

lines = File.readlines(ARGV[0])
lines_count = lines.size
text = lines.join
total_characters = text.length
puts "#{lines_count} lines"
puts "#{total_characters} characters"

word_count = text.split(/\w+/).length
puts "#{word_count} words"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

stopwords = %w{the a by on for of are with just but and to the my I has some in}

words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) }
# puts keywords.join(" ")