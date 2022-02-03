class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.integer :number, null: false
      t.string :kind, null: false
      t.boolean :primary, null: false

      t.timestamps
    end
  end
end
