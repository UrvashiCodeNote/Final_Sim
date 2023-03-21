class ContactBook < ApplicationRecord
    belongs_to :contactable, polymorphic: true
     enum status: %i(pending activated deactivated)
end
