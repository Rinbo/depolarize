class DonationsController < ApplicationController
  def new
  end
  
  def create    
    @amount = 500
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    donation = Stripe::Donation.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Depolarize Doner',
      :currency    => 'euro'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_donation_path
  end

end
