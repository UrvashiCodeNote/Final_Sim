class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   belongs_to :service_provider 
   enum role: %i(admin superadmin).freeze

   after_create :assign_maile

    def assign_maile
      UserMailer.welcome_email(@user).deliver_now
    end

end
