 # #1
require_relative '../models/address_book'

class MenuController
    attr_accessor :address_book, :index

    def initialize
        @address_book = AddressBook.new
    end

    def main_menu
        # #2
        puts "Main Menu - #{@address_book.entries.count} entries"
        puts "1 - View all entries"
        puts "2 - Create an entry"
        puts "3 - Search for an entry"
        puts "4 - Import entries from a CSV"
        puts "5 - View Entry Number n"
        puts "6 - Exit"
        print "Enter your selection: "

        # #3
        selection = gets.to_i
        puts "You picked #{selection}"

        # #7
        case selection
        when 1
            system "clear"
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
            system "clear"
            entry_n_submenu
            main_menu
        when 6
            puts "Good-bye!"
        # #8
            exit(0)
        # #9
        else
            system "clear"
            puts "Sorry, that is not a valid input"
            main_menu
        end
    end

    # #10
    def view_all_entries

        # #14
        @address_book.entries.each do |entry|
            system "clear"
            puts entry.to_s

        # #15
            entry_submenu(entry)
        end

        system "clear"
        puts "End of entries"
    end

    def create_entry

        # #11
        system "clear"
        puts "New AddressBloc Entry"

        # #12
        print "Name: "
        name = gets.chomp
        print "Phone number: "
        phone = gets.chomp
        print "Email: "
        email = gets.chomp

        # #13
        @address_book.add_entry(name, phone, email)

        system "clear"
        puts "New entry created"
    end

    def search_entries
    end

    def read_csv
    end

    def entry_submenu(entry)
        # #16
        puts "n - next entry"
        puts "d - delete entry"
        puts "e - edit this entry"
        puts "m - return to main menu"

        # #17
        selection = gets.chomp

        case selection
        # #18
        when "n"
        # #19
        when "d"
        when "e"
        # #20
        when "m"
            system "clear"
            main_menu
        else
            system "clear"
            puts "#{selection} is not a valid input"
            entry_submenu(entry)
        end
    end

    def entry_n_submenu
        puts "Desired entry number:"
        selection = gets.chomp.to_i
        system "clear"

        if selection < @address_book.entries.count
          puts @address_book.entries[selection]
          puts "Press enter to return to the main menu"
          gets.chomp
          system "clear"
        else
          puts "#{selection} is not a valid input"
          entry_n_submenu
        end
      end



end

#1 Here we include AddressBook using require_relative.

#2 Here we display the main menu options to the command line.

#3 Here we retrieve user input from the command line using gets. gets reads the next line from standard input.

#4 - 6 are in address_book.rb

#7 Here we use a case statement operator to determine the proper response to the user's input.

#8 Here we terminate the program using exit(0). 0 signals the program is exiting without an error.

#9 Here we use an else to catch invalid user input and prompt the user to retry.

#10 Here we stub the rest of the methods called in main_menu.

#11 Here we clear the screen before displaying the create entry prompts.

#12 Here we use print to prompy the user for each Entry attribute. print works just like a puts, except that it doens't add a newline.

#13 Here we add a new entry to the @address_book using add_entry to ensure that the new entry is added in the proper order.

#14 Here we iterature through all entries in AddresBook using each

#15 Here we call entry_submenu to display a submenu for each entry. We'll add that methos at the bottom of our MenuController

#16 Here we display the submenu options

#17 Here chomp removes any trailing whitespace from the string gets returns. This is necessary because "m " or "m\n" won't match "m"

#18 Here, when the user asks to see the next entry, we can do nothing and control will be returned to view_all_entries.

#19 Here we'll handle delting and editing in another checkpoint, for now the user will be shown th enext entry.

#20 Here we return the user to the main menu
