class CreateLetters < ActiveRecord::Migration[5.2]
  def change
    create_table :letters do |t|
      t.string :content
      t.references :baby, foreign_key: true

      t.timestamps
    end
  end
end
