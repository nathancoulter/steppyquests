class StepsController < ApplicationController
  before_action :set_step, only: %i[ show edit update destroy ]

  def create
    @scene = scene.find(params[:scene_id])
    @step = @scene.steps.create(step_params)
    redirect_to scene_path(@scene)
  end
    
  def show
  end

  private

  def set_step
    @step = step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:title, :body)
  end
end