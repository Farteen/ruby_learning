require 'pstore'

class Person
    attr_accessor :name, :job, :gender, :age
end

# fred = Person.new
# fred.name = "Fred Bloggs"
# fred.age = 45

# laura = Person.new
# laura.name = "Laura Smith"
# laura.age = 23

# store = PStore.new("storagefile")
# store.transaction do
#   store[:people] ||= Array.new
#   store[:people] << fred
#   store[:people] << laura
# end

store = PStore.new("storagefile")
people = []
store.transaction do
    people = store[:people]
end

people.each do |person|
    puts person.name
end

