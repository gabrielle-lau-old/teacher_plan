class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.string :description
      t.date :target_date
      t.integer :goal_id
      t.text :lead
      t.text :resources
      t.string :implementation_specifics
      t.string :measures_of_success

      t.timestamps

    end
  end
end
