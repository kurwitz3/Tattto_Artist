class Artist < ActiveRecord::Base 
 has_many :clients
 has_secure_password


end 