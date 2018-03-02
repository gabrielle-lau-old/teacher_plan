class CreateActionComments < ActiveRecord::Migration
  def change
    create_table :action_comments do |t|
      t.integer :user_id
      t.integer :action_step_id

      t.timestamps

    end
  end
end
