class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
