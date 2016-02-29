class RoutinesController < ApplicationController
  before_action :set_routine, only: [:show, :edit, :update, :destroy]
  before_action :set_exercises, only: [:new, :edit]

  def index
    @routines = Routine.all
  end

  def show
  end

  def new
    @routine = Routine.new
    @routine.routine_sets.build
  end

  def create
    @routine = Routine.new(routine_params)
    # @routine_set = RoutineSet.new(routine_set_params)

    respond_to do |format|
      if @routine.save
        format.html { redirect_to @routine, notice: 'Routine was successfully created.' }
        format.json { render :show, status: :created, location: @routine }
      else
        format.html { render :new }
        format.json { render json: @routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def routine_params
    params.require(:routine).permit(:name, routine_sets_attributes: [:exercise_id, :routine_id, :sets, :repetition,
                                                                     :rest_time])
  end

  def set_routine
  @routine = Routine.find(params[:id])
  end

  def set_exercises
    @exercises = Exercise.all
  end

end