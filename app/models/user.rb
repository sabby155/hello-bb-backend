class User < ApplicationRecord
    has_secure_password 
    has_many :babies

    validates :username, uniqueness: {case_sensitive: false}

    def full_name 
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
    end

end
