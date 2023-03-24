class ContactBook < ApplicationRecord

    belongs_to :contactable, polymorphic: true
    enum status: %i(pending activated deactivated), _default: :pending
    
end
