class Baby < ApplicationRecord
    belongs_to :user
    has_many :letters
    has_many :media
    has_many :baby_milestones
    has_many :baby_first_faves, through: :baby_milestones

    def full_name 
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
    end
end
