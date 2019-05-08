class DeleteAddressToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :addresses_id, :references
  end
end
