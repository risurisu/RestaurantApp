class Order < ActiveRecord::Base

has_many :tables
belongs_to :food
belongs_to :bills 

end
