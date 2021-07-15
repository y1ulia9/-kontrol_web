class MakeFieldsRequired < ActiveRecord::Migration[6.1]


    change_column :products, :name, :string, null: false
    change_column :companies, :name, :string, null: false
    change_column :costs, :cost, :integer, null: false
    change_column :orders, :amount, :integer, null: false
    change_column :product_groups, :name, :string, null: false


end
