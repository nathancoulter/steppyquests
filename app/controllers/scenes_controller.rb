class ScenesController < ApplicationController
    def create
        @quest = Quest.find(params[:quest_id])
        @scene = @quest.scenes.create(scene_params)
        redirect_to quest_path(@quest)
      end
    
      private
        def scene_params
          params.require(:scene).permit(:title, :body)
        end
    end