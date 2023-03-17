class Step < ApplicationRecord
  belongs_to :scene 
  has_one :scene
  alias_attribute :source_scene, :scene
end
