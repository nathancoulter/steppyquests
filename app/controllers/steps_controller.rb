class StepsController < ApplicationController

  def create
    @quest = Quest.find(params[:quest_id])
    @scene = Scene.find(params[:scene_id])
    @step = @scene.steps.create(step_params)
    redirect_to quest_path(@quest)
  end

  private

  def step_params
      params.require(:step).permit(:choice, :target_scene_id)
    end

end