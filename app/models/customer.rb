class Customer < ApplicationRecord

   attr_accessor :address ,:city
   belongs_to :service_provider
   belongs_to :user
   has_many :contact_books, as: :contactable
   has_many :addresses, as: :addressable

   has_one_attached :aadhar_image
   validates :aadhar_number, presence: true, numericality: { only_integer: true }, length: { is: 12 }
   validates :email, presence: true, uniqueness: true
   validates :first_name, :last_name, presence: true, length: { minimum: 2 }
   # validates :aadhar_image, presence: true 

end