class CreateBabyMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_milestones do |t|
      t.string :date
      t.string :caption
      t.string :link
      t.references :baby, foreign_key: true
      t.references :baby_first_fave, foreign_key: true


      t.timestamps
    end
  end
end
