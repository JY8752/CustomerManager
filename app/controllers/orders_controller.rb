class OrdersController < ApplicationController

  def index
    @house ||= House.find_by(id: session[:customer_id])

    @customer = Customer.new
    @customer.name = session[:customer_name]
    @customer.birthday = session[:customer_birthday]
    @customer.phone_number = session[:customer_phone_number]
    # @customer.house_id = session[:customer_id]

    @order = Order.new
    @order.TV = session[:order_TV]
    @order.NET = session[:order_NET]
    @order.PHONE = session[:order_PHONE]
    # @order.customer_id = session[:customer_id]
  end

  def new
    session.delete(:order_TV) if session[:order_TV]
    session.delete(:order_NET) if session[:order_NET]
    session.delete(:order_PHONE) if session[:order_PHONE]
  end

  def create
    session[:order_TV] = order_params[:TV]
    session[:order_NET] = order_params[:NET]
    session[:order_PHONE] = order_params[:PHONE]
    redirect_to orders_path
  end

  def edit
    @house = House.find(params[:id])
    @customer = @house.customer
    @order = Customer.find(params[:id]).order
  end

  def save
    @customer = Customer.new
    # @customer.merge(house_id: session[:customer_id])
    @customer.name = session[:customer_name]
    @customer.birthday = session[:customer_birthday]
    @customer.phone_number = session[:customer_phone_number]
    @customer.house_id = session[:customer_id]

    @order = Order.new
    # @order.merge(customer_id: session[:customer_id])
    @order.TV = session[:order_TV]
    @order.NET = session[:order_NET]
    @order.PHONE = session[:order_PHONE]
    @order.customer_id = session[:customer_id]

    if @customer.save && @order.save
      redirect_to root_url, notice: "オーダーが完了しました。"
    else
      flash.now.alert = 'オーダーに失敗しました。'
      render :index
    end
  end

  private

  def order_params
    params.require(:session).permit(:TV, :NET, :PHONE)
  end
end
