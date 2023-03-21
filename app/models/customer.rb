class Customer < ApplicationRecord
   belongs_to :service_provider
     has_many :contact_books, as: :contactable
     has_many :address, as: :addressable

end
