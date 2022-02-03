class AddUniqueContactsName < ActiveRecord::Migration[7.0]
  def change
    add_index :contacts, %i[user_id name], unique: true
  end
end
