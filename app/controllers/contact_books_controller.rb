class ContactBooksController < ApplicationController

    def generate_number
     phone_number = rand(7000000000..9999999999).to_i
      contact = ContactBook.find_by(phone: phone_number)

      if contact.nil?
        contact = ContactBook.new(phone: phone_number)
        contact.contactable = current_user 
        contact.save!
      end
      render :json =>  contact 
    end
end
