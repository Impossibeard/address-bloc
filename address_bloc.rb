require_relative 'controllers/menu_controller'

# #4
menu = MenuController.new

# #5
system "clear"
puts "Welcome to AddressBloc!"

# #6
menu.main_menu

#4 Here we create a new MenuController when Addressbloc starts.

#5 Here we use syste, "clear" to clear the command line.

#6 Here we call main_menu to display the menu.
