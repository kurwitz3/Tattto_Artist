class Artist < ActiveRecord::Base 
 has_many :clients
 has_secure_password
validates :email, uniqueness: true
validates :email, :name, presence: true

end 