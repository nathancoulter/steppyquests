class Scene < ApplicationRecord
  belongs_to :quest
  has_many :steps, foreign_key: :source_scene_id
end
