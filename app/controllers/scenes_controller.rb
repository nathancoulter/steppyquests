class ScenesController < ApplicationController
  before_action :set_scene, only: %i[ show edit update destroy ]

  def create
    @quest = Quest.find(params[:quest_id])
    @scene = @quest.scenes.create(scene_params)
    redirect_to quest_path(@quest)
  end
    
  def show
  end

  private

  def set_scene
    @scene = Scene.find(params[:id])
  end

  def scene_params
    params.require(:scene).permit(:title, :body)
  end
end