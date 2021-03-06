class PaymentsController < ApplicationController
  skip_after_action :verify_authorized
  before_action :set_order_and_cart

  def new
  end

  def create
    begin
      @amount_cents = @order.amount_cents

      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )

      charge = Stripe::Charge.create(
        customer:     customer.id,   # You should store this customer id and re-use it.
        amount:       @amount_cents, # in cents
        description:  "Payment for your cart for order #{@order.id}",
        currency:     'eur'
      )

      @order.update(payment: charge.to_json, state: 'paid')
      @cart.update(status: true)
      redirect_to order_path(@order)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_payment_path(@order)
    end
  end

  private

  def set_order_and_cart
    @order = Order.where(state: 'pending').where(user_id: current_user.id).last
    @cart = Cart.where(user: current_user, status: false).first
  end
end
