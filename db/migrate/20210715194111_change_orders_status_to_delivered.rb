class ChangeOrdersStatusToDelivered < ActiveRecord::Migration[6.1]
  def change

    rename_column :orders, :status, :delivered
  end
end
