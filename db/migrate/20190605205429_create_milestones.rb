class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.string :first_smile
      t.string :first_laugh
      t.string :first_walk
      t.string :first_food
      t.string :first_crawl
      t.string :first_tooth
      t.string :first_sitting_up
      t.string :first_word
      t.string :first_outing
      t.string :fave_food
      t.string :fave_song
      t.string :fave_toy
      t.string :fave_book
      t.string :fave_blanket
      t.string :fave_outfit
      t.string :fave_activity
      t.string :fave_game
      t.string :fave_show



      t.timestamps
    end
  end
end
