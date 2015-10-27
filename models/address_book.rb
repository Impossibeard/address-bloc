# #8
require_relative 'entry'

class AddressBook

    attr_accessor :entries
    
    def initialize
        @entries = []
    end
    
    def add_entry(name, phone_number, email)
        # #9
        index = 0
        @entries.each do |entry|
            # #10
            if name < entry.name
                break
            end
            index += 1
        end
        # #11
        @entries.insert(index, Entry.new(name, phone_number, email))
    end
    
    def remove_entry(name, phone_number, email)
        index = 0
        @entries.each do |match|
            if match.name == name && match.phone_number == phone_number && match.email == email
                break
            end
            index += 1
        end
        @entries.delete_at(index)
    end
    
end

#8 Here we tell Ruby to load the library named entry.rb relative to address_book.rb's file path using require_relative.

#9 Here we create a variable to store the insertion index.

#10 Here we compare name with the name of the current entry. If name lexicographically proceeds entry.name, we've found the index to insert at. Otherwise we increment index and continue comparing with the other entries.

#11 Here we insert a new entry into entries using the calculated index.