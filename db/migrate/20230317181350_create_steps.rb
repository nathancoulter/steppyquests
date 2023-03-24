class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.string :choice
      t.references :source_scene, null: false, foreign_key: {to_table: 'scenes'}
      t.references :target_scene, null: false, foreign_key: {to_table: 'scenes'}
      t.timestamps
    end
  end
end
