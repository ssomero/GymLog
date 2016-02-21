class Workout < ActiveRecord::Base
  has_many :exercise_sets
end
