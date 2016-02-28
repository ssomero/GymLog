class CreateRoutineSets < ActiveRecord::Migration
  def change
    create_table :routine_sets do |t|
      t.integer :exercise_id
      t.integer :routine_id
      t.integer :sets
      t.integer :repetition
      t.string :rest_time

      t.timestamps null: false
    end
  end
end
