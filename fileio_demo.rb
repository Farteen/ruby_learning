# File.open("analyzer.rb").each { |line| puts line }
# File.new("text.txt","r").each { |line| puts line }
# File.open("text.txt") do |f|
#     puts f.gets
# end

# f = File.new("text.txt", "r")
# puts f.gets
# puts f.gets
# puts f.gets
# f.close

# class MyFile
#     attr_accessor :handle
#     def initialize(filename)
#         @handle = File.new(filename, "r")
#     end

#     def finished
#         @handle.close
#     end
# end

# f = MyFile.new("text.txt")
# puts f.handle.gets
# f.finished

# File.open("text.txt") do |f|
#     10.times { puts f.gets }
# end

# puts File.open("text.txt").readlines.join("--")
# File.open("text.txt") do |f|
#     puts f.read(100)
# end

# puts File.open("text.txt", "r:utf-8").external_encoding#each { |line| puts line }
# puts File.open("text.txt", "r").external_encoding

# File.rename("text.txt", "text2.txt")
# File.rename("text2.txt", "text.txt")

# puts Dir.pwd
# puts File.expand_path("text2.txt")
# puts File.mtime("text.txt").class
# puts "It not exists!" if !File.exist?("file212.txt")

# puts Dir["/usr/bin/*"]

puts Dir[File.join(File::SEPARATOR, 'usr','bin', '*')]
