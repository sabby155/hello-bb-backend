class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :full_name
  
  has_many :babies 



   
end
