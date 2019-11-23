class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :role,  default: 0, null: false
      t.string :username, null: false

      t.timestamps
    end
  end
end
