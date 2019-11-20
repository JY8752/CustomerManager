class CustomersController < ApplicationController
  def new
      session.delete(:customer_name) if session[:customer_name]
      session.delete(:customer_birthday) if session[:customer_birthday]
      session.delete(:customer_phone_number) if session[:customer_phone_number]
      session.delete(:customer_id) if session[:customer_id]
      session[:customer_id] = params[:id]
      # flash[:notice] = "セッションデータを初期化しました。"
  end

  def create
    session[:customer_name] = customer_params[:name]
    session[:customer_birthday] = customer_params[:birthday]
    session[:customer_phone_number] = customer_params[:phone_number]
    redirect_to new_order_url
  end

  def edit
  end

  private

 def  customer_params
  params.require(:session).permit(:name, :birthday, :phone_number)
 end
end
