class User < ApplicationRecord
    has_many :babies


    def full_name 
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
    end

end
