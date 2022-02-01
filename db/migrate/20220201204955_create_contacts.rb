class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, unique: true
      t.date :birthdate

      t.timestamps
    end
  end
end
