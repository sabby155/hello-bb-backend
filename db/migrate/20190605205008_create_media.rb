class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :link
      t.string :caption
      t.string :date
      t.references :baby, foreign_key: true


      t.timestamps
    end
  end
end
