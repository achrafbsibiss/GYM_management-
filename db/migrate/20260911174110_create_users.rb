class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birthday, null: false
      t.string :addresse, null: false
      t.string :email
      t.integer :role, default: 0

      t.timestamps
    end

    add_index :users, [ :first_name, :last_name ], unique: true
    add_index :users, [ :email ], unique: true
  end
end
