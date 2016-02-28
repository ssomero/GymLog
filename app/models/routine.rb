class Routine < ActiveRecord::Base
  has_many :routine_sets
  has_many :exercises, :through => :routine_sets

  accepts_nested_attributes_for :routine_sets
end
