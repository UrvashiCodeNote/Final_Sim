class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
     @service_provider =  current_user.service_provider
     @customer = @service_provider.customers.build(customer_params.merge(user_id: current_user.id))

    if @customer.save
       @address =  @customer.addresses.new(address_params)
       @address.save
      redirect_to @customer
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show 
     @customer = Customer.find(params[:id])
  end


   private
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :email, :aadhar_number, :aadhar_image)
    end

    def address_params
       params.require(:customer).permit(:address, :city)
    end
end
