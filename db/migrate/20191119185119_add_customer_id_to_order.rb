class AddCustomerIdToOrder < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM orders;'
    add_reference :orders, :customer, index: true
  end

  def down
    remove_reference :orders, :customer, index: true
  end
end
