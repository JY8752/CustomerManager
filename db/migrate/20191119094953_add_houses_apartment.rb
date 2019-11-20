class AddHousesApartment < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :apartment_name, :string
    add_column :houses, :room_number, :integer
  end
end
