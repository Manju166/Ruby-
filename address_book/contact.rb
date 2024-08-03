class Contact
    attr_accessor :name, :email, :phone
  
    def initialize(name, email, phone)
      @name = name
      @email = email
      @phone = phone
    end
  
    def to_s
      "#{name} - Email: #{email}, Phone: #{phone}"
    end
end