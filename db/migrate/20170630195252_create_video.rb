class CreateVideo < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
