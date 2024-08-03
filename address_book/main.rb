require_relative 'addressbook'

address_book = AddressBook.new

loop do
  puts "\n--- Address Book Menu ---"
  puts "1. Add Contact"
  puts "2. List Contacts"
  puts "3. Edit Contact"
  puts "4. Delete Contact"
  puts "5. Exit"
  print "Choose an option: "
  option = gets.chomp.to_i

  case option
  when 1
    print "Enter name: "
    name = gets.chomp
    print "Enter email: "
    email = gets.chomp
    print "Enter phone: "
    phone = gets.chomp
    contact = Contact.new(name, email, phone)
    address_book.add_contact(contact)
    puts "Contact added!"
  when 2
    address_book.list_contacts
  when 3
    address_book.list_contacts
    print "Enter the contact number to edit: "
    index = gets.chomp.to_i - 1
    if index.between?(0, address_book.list_contacts.count - 1)
      print "Enter new name: "
      name = gets.chomp
      print "Enter new email: "
      email = gets.chomp
      print "Enter new phone: "
      phone = gets.chomp
      updated_contact = Contact.new(name, email, phone)
      address_book.edit_contact(index, updated_contact)
      puts "Contact updated!"
    else
      puts "Invalid contact number."
    end
  when 4
    address_book.list_contacts
    print "Enter the contact number to delete: "
    index = gets.chomp.to_i - 1
    if index.between?(0, address_book.list_contacts.count - 1)
      address_book.delete_contact(index)
      puts "Contact deleted!"
    else
      puts "Invalid contact number."
    end
  when 5
    puts "Exiting the address book."
    break
  else
    puts "Invalid option. Please try again."
  end
end
