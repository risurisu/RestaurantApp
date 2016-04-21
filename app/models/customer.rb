class Customer < ActiveRecord::Base

has_many :parties
has_many :tables, through: :parties


end
