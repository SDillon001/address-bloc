# #8 we tell Ruby to load the library named entry.rb relative to  address_book.rb's file path using require_relative
 require_relative 'entry'

class AddressBook
  attr_reader :entries
  def initialize
    @entries = []
  end

def add_entry(name, phone_number, email)
     # #9 we create a variable to store the insertion index
     index = 0
     entries.each do |entry|
     # #10 we compare name with the name of the current entry. If name lexicographically proceeds entry.name, we've found the  index to insert at. Otherwise we increment index and continue comparing with the other entries.
       if name < entry.name
         break
       end
       index+= 1
     end
     # #11 we insert a new entry into entries using the calculated `index.
     entries.insert(index, Entry.new(name, phone_number, email))
   end

def remove_entry(name, phone_number, email)
     # create a variable to store the entry to be deleted
     delete_entry = nil

     # loop over every entry in the address book
     entries.each do |entry|
       if name == entry.name && phone_number == entry.phone_number && email == entry.email
        delete_entry = entry
       end
     end

     # delete entry from entry array
     entries.delete(delete_entry)
   end
 end