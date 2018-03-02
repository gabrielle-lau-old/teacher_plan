class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :action_step
      t.string :comments
      t.integer :improvement_plan_id
      t.string :description

      t.timestamps

    end
  end
end
