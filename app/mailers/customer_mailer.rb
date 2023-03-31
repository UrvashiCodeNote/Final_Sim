class CustomerMailer < ApplicationMailer

  def new_customer_create(customer)
    @customer = customer
    mail(to: @customer.email, subject: "Created Succsfully!")
  end

  def update_status(customer)
    @customer = customer.phone
      mail(to: @customer.email, subject: "Activated Succsfully!")
  end
end
