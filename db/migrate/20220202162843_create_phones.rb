class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.integer :number
      t.string :type
      t.boolean :primary

      t.timestamps
    end
  end
end
