class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.integer :weight_kg
      t.integer :repetition

      t.timestamps null: false
    end
  end
end
