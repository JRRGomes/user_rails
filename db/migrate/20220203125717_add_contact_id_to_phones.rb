class AddContactIdToPhones < ActiveRecord::Migration[7.0]
  def change
    add_column :phones, :contact_id, :integer
    add_index :phones, :contact_id
  end
end
