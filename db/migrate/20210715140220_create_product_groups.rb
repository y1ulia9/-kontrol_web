class CreateProductGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :product_groups do |t|
      t.string :name
      t.integer :plan, :default => 0

      t.timestamps
    end
  end
end
