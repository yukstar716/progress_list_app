class RemoveUsersTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :users
  end

  def down
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
      t.index :email, unique: true
    end

  end

end
