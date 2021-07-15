class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :costs do |t|
    t.integer :cost
    t.belongs_to :product
    t.belongs_to :company

      t.timestamps
    end
  end
end
