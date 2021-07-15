class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :invoice, :default => 0

      t.timestamps
    end
  end
end
