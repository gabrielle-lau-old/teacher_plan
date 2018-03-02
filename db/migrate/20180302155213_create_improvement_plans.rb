class CreateImprovementPlans < ActiveRecord::Migration
  def change
    create_table :improvement_plans do |t|
      t.string :state
      t.integer :user_id
      t.string :comments

      t.timestamps

    end
  end
end
