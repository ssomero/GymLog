class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :main_muscles
      t.string :bodypart
      t.string :force
      t.string :mechanics_type

      t.timestamps null: false
    end
  end
end
