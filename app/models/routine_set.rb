class RoutineSet < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :routine

  accepts_nested_attributes_for :routine
end
