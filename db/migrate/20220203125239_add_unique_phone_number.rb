class AddUniquePhoneNumber < ActiveRecord::Migration[7.0]
  def change
    add_index :phones, %i[contact_id number], unique: true
  end
end
