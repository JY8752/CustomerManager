class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :TV
      t.integer :NET
      t.integer :PHONE
      t.string :new
      t.string :edit

      t.timestamps
    end
  end
end
