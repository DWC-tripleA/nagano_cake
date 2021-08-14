class CustomersController < ApplicationController
  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(current_customer)
    else
      render :edit
    end
  end

  def unsubscribe
    @customer = Customer.find(params[:id])
  end

  def withdraw
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private
    def customer_params
      params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email, :is_deleted)
    end

end
