require_relative '../models/address_book'

RSpec.describe AddressBook do

  let (:book) {AddressBook.new}


    def check_entry(entry, expected_name, expected_number, expected_email)
      expect(entry.name).to eql expected_name
      expect(entry.phone_number).to eql expected_number
      expect(entry.email).to eql expected_email
    end


    describe "attributes" do
        it "should respond to entries" do
            expect(book).to respond_to (:entries)
        end

        it "should initialize entries as an array" do
             expect(book.entries).to be_a(Array)
        end

        it "should initialize entries as empty" do
            expect(book.entries.size).to eq(0)
        end
    end

    describe "#add_entry" do
        it "adds only one entry to the address book" do
            book.add_entry("Jenny Love", "321.867.5309", "jenny.love@gmail.com")

            expect(book.entries.size).to eq(1)
        end

        it "adds the correct information to entries" do
            book.add_entry("Jenny Love", "321.867.5309", "jenny.love@gmail.com")
            new_entry = book.entries[0]

            expect(new_entry.name).to eq("Jenny Love")
            expect(new_entry.phone_number).to eq("321.867.5309")
            expect(new_entry.email).to eq("jenny.love@gmail.com")
        end
    end

    describe "import_from_csv" do
      it "imports the correct number of entries" do

        book.import_from_csv("entries.csv")
        book_size = book.entries.size

        # Check the size of the entries in AddressBook
       expect(book_size).to eql 5
     end


     it "imports the 1st entry" do
       book.import_from_csv("entries.csv")
       # Check the first entry
       entry_one = book.entries[0]

      # #5
      check_entry(entry_one, "Bill", "555-555-4854", "bill@blocmail.com")
     end

     it "imports the 2nd entry" do
       book.import_from_csv("entries.csv")
       # Check the second entry
       entry_two = book.entries[1]
       check_entry(entry_two, "Bob", "555-555-5415", "bob@blocmail.com")
     end

     it "imports the 3rd entry" do
       book.import_from_csv("entries.csv")
       # Check the third entry
       entry_three = book.entries[2]
       check_entry(entry_three, "Joe", "555-555-3660", "joe@blocmail.com")
     end

     it "imports the 4th entry" do
       book.import_from_csv("entries.csv")
       # Check the fourth entry
       entry_four = book.entries[3]
       check_entry(entry_four, "Sally", "555-555-4646", "sally@blocmail.com")
     end

     it "imports the 5th entry" do
       book.import_from_csv("entries.csv")
       # Check the fifth entry
       entry_five = book.entries[4]
       check_entry(entry_five, "Sussie", "555-555-2036", "sussie@blocmail.com")
     end

   end

   describe "second import_from_csv" do
     it "imports the correct number of entries" do
       book.import_from_csv("entries_2.csv")
       book_size = book.entries.size

       expect(book_size).to eql 3
     end

     it "imports the first entry" do
        book.import_from_csv("entries_2.csv")
        entry_one = book.entries[0]
        check_entry(entry_one, "Clark", "333-444-5678", "clark.kent@thedailyplanet.org")
    end

    it "imports the second entry" do
      book.import_from_csv("entries_2.csv")
      entry_two = book.entries[1]
      check_entry(entry_two, "Johnny", "000-000-6969", "johnnybravo@cartoonnetwork.com")
    end

    it "imports the third entry" do
      book.import_from_csv("entries_2.csv")
      entry_three = book.entries[2]
      check_entry(entry_three, "Steve", "123-456-7890", "jobs@apple.com")
    end

   end

end
