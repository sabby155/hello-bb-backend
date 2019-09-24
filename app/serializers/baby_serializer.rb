class BabySerializer < ActiveModel::Serializer
  attributes :id, :relationship, :first_name, :last_name, :full_name, :birth_date, :delivered_in, :delivered_by, :weight, :height, :horoscope_sign, :first_address, :user_id, :media, :letters, :baby_milestones, :milestones
  
  # deleted milestones

  belongs_to :user
  has_many :letters
  has_many :media
  has_many :baby_milestones
  has_many :milestones, through: :baby_milestones


end
