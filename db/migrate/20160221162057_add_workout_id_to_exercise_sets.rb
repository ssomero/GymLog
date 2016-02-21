class AddWorkoutIdToExerciseSets < ActiveRecord::Migration
  def change
    add_column :exercise_sets, :workout_id, :integer
  end
end
