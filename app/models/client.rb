class Client < ActiveRecord::Base 
belongs_to :artist
validates :email, uniqueness: true
validates :email, :name, :tattoo, presence: true
end 