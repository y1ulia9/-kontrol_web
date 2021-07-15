class CreateLastOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|


      t.integer :amount
      t.boolean :status
      t.belongs_to :user
      t.belongs_to :cost


      t.timestamps
    end
  end
end
