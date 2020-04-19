class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.text :comment
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
