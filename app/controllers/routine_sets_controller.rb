class RoutineSetsController < ApplicationController
  def create
    @routine_set = RoutineSet.new(routine_set_params)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def routine_set_params
    params.require(:routine_set).permit(:exercise_id, :routine_id, :sets, :repetition, :rest_time)
  end

end