class CreateScenes < ActiveRecord::Migration[7.0]
  def change
    create_table :scenes do |t|
      t.string :title
      t.text :body
      t.references :quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
