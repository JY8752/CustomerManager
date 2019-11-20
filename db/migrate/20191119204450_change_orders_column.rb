class ChangeOrdersColumn < ActiveRecord::Migration[5.2]
  def up
    change_column :orders, :TV, :string
    change_column :orders, :NET, :string
    change_column :orders, :PHONE, :string
  end

  def down
    change_column :orders, :TV, :integer
    change_column :orders, :NET, :integer
    change_column :orders, :PHONE, :integer
  end
end
