class AddUniquePhoneNumber < ActiveRecord::Migration[7.0]
  def change
    add_index :phones, :number, unique: true
  end
end
