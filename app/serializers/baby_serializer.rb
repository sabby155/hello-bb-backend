class BabySerializer < ActiveModel::Serializer
  attributes :id, :relationship, :first_name, :last_name, :full_name, :birth_date, :hospital_name, :weight, :height, :horoscope_sign, :first_address, :user_id
  
  has_many :letters
  has_many :media
  has_many :baby_milestones
  has_many :baby_first_faves, through: :baby_milestones


end
