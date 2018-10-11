class DonationsController < ApplicationController
  def new
  end
  
  def create    
    @amount = 500
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    donation = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Depolarize Doner',
      :currency    => 'eur'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to feeds_path
  end

end