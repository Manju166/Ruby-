require_relative 'contact'

class AddressBook
  def initialize
    @contacts = []
  end

  def add_contact(contact)
    @contacts << contact
  end

  def list_contacts
    if @contacts.empty?
      puts "No contacts available."
    else
      puts "Contacts:"
      @contacts.each_with_index do |contact, index|
        puts "#{index + 1}. #{contact}"
      end
    end
  end

  def find_contact(index)
    @contacts[index]
  end

  def delete_contact(index)
    @contacts.delete_at(index)
  end

  def edit_contact(index, updated_contact)
    @contacts[index] = updated_contact
  end
end
