class Milestone < ApplicationRecord
    has_many :baby_milestones
    has_many :babies, through: :baby_milestones
end
