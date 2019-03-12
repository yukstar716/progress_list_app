class AddUserIdToIdeas < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM ideas;'
    add_reference :ideas, :user, null: false, index: true
  end

  def down
    remove_reference :ideas, :user, :index, true
  end

end
