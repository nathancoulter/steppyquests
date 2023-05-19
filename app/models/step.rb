class Step < ApplicationRecord
  belongs_to :source_scene, class_name: 'Scene'
  belongs_to :target_scene, class_name: 'Scene'
end
