class Routine < ActiveRecord::Base
  has_many :exercises, through: :routine_sets
end
