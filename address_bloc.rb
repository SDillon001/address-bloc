 require_relative 'controllers/menu_controller'
 
 # #4 create a new MenuController when AddressBloc starts
 menu = MenuController.new
 # #5 use  system "clear" to clear the command line
 system "clear"
 puts "Welcome to AddressBloc!"
 # #6 call main_menu to display the menu.
 menu.main_menu