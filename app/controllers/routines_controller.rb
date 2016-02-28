class RoutinesController < ApplicationController
  def index

  end

  def new
    @routine = Routine.new
  end
end