class Scene < ApplicationRecord
  belongs_to :quest
  has_many :steps, foreign_key: :source_scene_id, dependent: :delete_all
  has_many :target_steps, class_name: "Step", foreign_key: :target_scene_id, dependent: :delete_all
end
