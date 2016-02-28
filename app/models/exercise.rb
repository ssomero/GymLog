class Exercise < ActiveRecord::Base
  has_many :exercise_sets
  has_many :routines, through: :routine_sets

end
