 
require_relative '../models/address_book'

class MenuController
    attr_accessor :address_book
 def initialize
        @address_book = AddressBook.new
    end

    main_menu

       ain Menu - #{@address_book.entries.count} entries"
        puts "1 - View all entries"
        puts "2 - Create an entry"
        puts "3 - Search for an entry"
        puts "4 - Import entries from a CSV"
        puts "5 - Exit"
        print "Enter your selection: "


        select=_i
        puts "You picked #{selection}"


        case selection
   n       system "clear"
            view_all_entries
            main_menu
        when 2
            system "clear"
            create_entry
            main_menu
        when 3
            system "clear"
            search_entries
            main_menu
        when 4
            system "clear"
            read_csv
            main_menu
        when 5
            puts "Good-bye!"

            exit(0)

        else
         m "clear"
           , that is not a valid input"
            main_menu
        end
    end


    def view_all_entries


        @address_book.entries.each e|
            system "clea ts entry.to_s


            entry_submenu(entry)
        end

        system "clear"
        puts "Endiend

    def create_entry


        system "clear"
        puts "New AddressBloc Entry"


        print "Nam
        name = gets.c
print "Phone number: "
        phone = gets.chomp
        pril    email = gets.chomp


        @address_book.add_entry(name, phone, email)

        system "clear"
        puts "New entry created"
    end

    def search_e    def read_csv
    end

    def entry_submenu(entry)  puts "n - next entry"
        puts "d - delete entry"
        p"e - edit this entry"
        pum - return to main menu"

     selection = gets.chomp

 ase selection

        when "n"

        when "d"
        when "e"

        when "m"
            system "clear"
            main_menu
   e         system "clear"
         "#{selection} is not a put"
            emenu(entry)
        end
    end

en
