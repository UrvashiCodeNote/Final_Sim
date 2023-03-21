class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :contact_books, as: :contactable
   has_many :address, as: :addressable
   belongs_to :service_provider 
   enum roles: %i(admin superadmin).freeze

   after_create :assign_mail

    def assign_mail
      UserMailer.welcome_email(self).deliver_now
    end
end
