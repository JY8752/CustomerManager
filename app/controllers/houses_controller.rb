class HousesController < ApplicationController
  def index
    @q = House.ransack(params[:q])
    @houses = @q.result(distinct: true)
  end

  def show
    @house = House.find(params[:id])
    @customer = @house.customer
    # if Customer.find_by(id: params[:id]) != nil
    #   @order = Customer.find(params[:id]).order
    # end
    @order = Order.find_by(customer_id: params[:id])
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(house_params)

    if @house.save
     @house.house = @house.id
       while @house.house.length < 4 do
         @house.house = "0" + @house.house
       end
      redirect_to root_url, notice: "ハウス「#{@house.house}」を登録しました。"
     @house.save
    else
      render :new
    end
  end

  def update
    @house = House.find(params[:id])

    if @house.update(house_params)
      redirect_to root_url, notice: "ハウス「#{@house.house}」を編集しました。"
    else
      render :edit
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_url, notice: "ハウス「#{@house.house}」を削除しました。"
  end

  private

  def house_params
    params.require(:house).permit(:address, :style, :apartment_name, :room_number, :house, :customer_id)
  end
end
