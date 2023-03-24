task :update_phone_status => :environment do
  # recently_activated_numbers = ContactBook.where("created_at  >= ?", 24.hours.ago)
  recently_activated_numbers = ContactBook.where("created_at  >= ?", 1.minutes.ago)
end


