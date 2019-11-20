class AddHouseIdToCustomer < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM customers;'
    add_reference :customers, :house, index: true
  end

  def down
    remove_reference :customers, :house, index: true
  end
end
