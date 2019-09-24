class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.string :relationship
      t.string :first_name
      t.string :last_name
      t.string :birth_date
      t.string :delivered_in
      t.string :delivered_by
      t.string :weight
      t.string :height
      t.string :horoscope_sign
      t.string :first_address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
